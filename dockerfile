# Use an current node alpine image
FROM node:current-alpine3.19

#make the default port accessible (you would need to change this to match your config.js in you data directory if you change from default)
EXPOSE 30000:30000

# run node when the container launches. assume path will be mapped to content
CMD ["node", "/pkg/resources/app/main.js", "--headless", "--dataPath=/data" ]
