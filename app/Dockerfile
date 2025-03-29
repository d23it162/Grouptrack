# Use an official Flutter image from Docker Hub
FROM cirrusci/flutter:latest AS build

# Set the working directory
WORKDIR /app

# Copy necessary files
COPY pubspec.yaml pubspec.lock ./

# Enable non-root user to avoid permission issues
RUN adduser -D -h /app LLT && chown -R LLT /app
USER LLT

# Copy the rest of the app source code
COPY . .

# Run Flutter pub get
RUN flutter pub get

# Build the Flutter web application
RUN flutter build web

# Use Nginx to serve the built Flutter web app
FROM nginx:latest AS runtime
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy built files from the previous stage
COPY --from=build /app/build/web .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
