var path              = require('path');
var es2015            = require('babel-preset-es2015');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var webpack           = require('webpack');

var extractPlugin = new ExtractTextPlugin({
    filename: 'css/dist/main.css'
});

module.exports = {
    entry: './app/client/js/clean-blog.js',
    output: {
        path: path.resolve(__dirname, 'public'),
        filename: 'javascript/dist/bundle.js',
        publicPath: '/public'
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: es2015
                    }
                }
            },
            {
                test: /\.scss$/,
                use: extractPlugin.extract({
                    // Adds CSS to the DOM by injecting a `<style>` tag
                    fallback: 'style-loader',
                    use: [
                        {
                            // Interprets `@import` and `url()` like `import/require()` and will resolve them
                            loader: 'css-loader'
                        },
                        {
                            // Loader for webpack to process CSS with PostCSS
                            loader: 'postcss-loader',
                            options: {
                                plugins: function () {
                                    return [
                                        require('precss'),
                                        require('autoprefixer')
                                    ];
                                }
                            }
                        },
                        {
                            // Loads a SASS/SCSS file and compiles it to CSS
                            loader: 'sass-loader'
                        }
                    ]
                })
            },
            {
                // the url-loader uses DataUrls
                test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/, 
                loader: "url-loader?limit=10000&mimetype=application/font-woff",
                options: {
                    name: '[name].[ext]',
                    outputPath: 'vendor/fontawesome-free/webfonts',
                    publicPath: '../vendor/fontawesome-free/webfonts'
                }
            },
            {   
                // the file-loader emits files
                test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/, 
                loader: "file-loader",
                options: {
                    name: '[name].[ext]',
                    outputPath: 'vendor/fontawesome-free/webfonts',
                    publicPath: '../vendor/fontawesome-free/webfonts'
                }
            },
        ]
    },
    plugins: [
        extractPlugin,
        new webpack.ProvidePlugin({
            $: 'jquery',
            jQuery: 'jquery'
        })
    ]
};