
const { parse } = require('url')
next = require('next')
const lazybuild = process.env.NODE_ENV === 'dev'
const nextApp = next({ lazybuild })
const handle =  nextApp.getRequestHandler()

module.exports = async function(context, callback) {
  console.log(context.request.url)
  handle(context.request, context.response)
}
