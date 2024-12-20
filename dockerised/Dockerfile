# Use the official Playwright image with Chromium pre-installed
FROM mcr.microsoft.com/playwright:v1.49.1-jammy

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if you have them)
COPY package.json package-lock.json ./

# Install your project's dependencies (including Playwright)
RUN npm install

# Copy the rest of the project files into the container
COPY . .

# Expose port (optional, if needed for the app to run on specific port)
EXPOSE 3000

# Default command to run your Playwright test
CMD ["node", "./tests/example.spec.js"]
