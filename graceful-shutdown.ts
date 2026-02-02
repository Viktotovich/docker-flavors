//in server.ts or similar
async function closeGracefully(signal) {
  console.log(`*^@4=> Received signal to terminate: ${signal}`);

  // await /*framework*/.close()
  // await other cleanups, db etc
  process.kill(process.pid, signal);
}

process.once("SIGNINT", closeGracefully);
process.once("SIGTERM", closeGracefully);

//written in Nano without Prettier or lint

//Courtesy of https://snyk.io/blog/10-best-practices-to-containerize-nodejs-web-applications-with-docker/#5-safely-terminate-node-js-docker-web-applications
