const path = require("path");
const Runner = require("moleculer").Runner;

const runner = new Runner();

if (process.env.NODE_ENV == "production") {
	process.env.SERVICEDIR = "/snapshot/moleculer-pkg-demo/services";
}

runner.start([
	process.argv[0],
	__filename,
	"--config",
	path.join(__dirname, "moleculer.config.js"),
	//"--repl",
	path.join(__dirname, "services")
]).catch(err => {
	console.error(err);
	process.exit(1);
});
