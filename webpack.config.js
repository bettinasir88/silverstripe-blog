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
            }
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