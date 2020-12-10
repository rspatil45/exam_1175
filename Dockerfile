# pre-build  docker image for node and backend
FROM node:10  
#specifying working directory inside which our all command will run
WORKDIR /app   
COPY package.json /app
RUN npm install
#copy all files to the working directory
COPY . /app
#running out app
CMD node index.js
# CMD ["npm" "start"]
EXPOSE 80

# docker build -t project1 . -> tag name project1, building the docker image not yet running
# docker run -it project1  -> (running docker using tag name) run app in interactive mode -p if using different port(on expose and and index.js) then to map them,
# -> -p  3000:3000 first is port exposed by docker and second is port our app is using
# -> we should use docker port no. in browser with ip address given by the docker 
# -> rebuild teh docker file if any changes done   

# docker ps ->get running docker processes
# docker inspect 768bbc973503 -> here inspecting docker app using container id (get using ps command) 
#->after above command we get process details such as ip address on which it is runnig

# go to "http://172.17.0.2:3000/" to get our running app

#docker push rspatil45/node_demo  -> for pushing on docker hub we should build image with tag that congain repository ex. rspatil45/tag_name
# sudo docker rmi -f (imageid) ->removing image
# docker images  ->get all images details
# sudo docker stop (image_id)
# docker ps ->get currently running images