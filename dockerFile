# Use official Flutter image as base
FROM cirrusci/flutter:latest

# Set working directory inside container
WORKDIR /app

# Copy pubspec and lock files first (for dependency caching)
COPY pubspec.yaml pubspec.lock ./

# Get dependencies
RUN flutter pub get

# Copy the entire project
COPY . .

# Ensure Flutter is configured
RUN flutter config --enable-web

# Build the Flutter project for the web
RUN flutter build web

# Use Nginx to serve the Flutter web app
FROM nginx:latest
COPY --from=0 /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
