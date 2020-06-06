const path = require("path")
const HtmlWebpackPlugin = require("html-webpack-plugin")

module.exports = {
  entry: "./app/index.js",

  plugins: [
    new HtmlWebpackPlugin({
      template: path.resolve(__dirname, "template.html")
    })
  ]
}