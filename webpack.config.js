var path = require('path');

var ExtractTextPlugin = require('extract-text-webpack-plugin');
var es2015 = require('babel-preset-es2015');

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
                    use: ['css-loader', 'sass-loader']
                })
            }
        ]
    },
    plugins: [
        extractPlugin
    ]
};