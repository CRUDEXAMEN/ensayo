"use strict";

var _app = _interopRequireDefault(require("./app.js"));
function _interopRequireDefault(e) { return e && e.__esModule ? e : { "default": e }; }
_app["default"].listen(3000, function () {
  console.log('Backend - Ejecutandose en el puerto: 3000');
});