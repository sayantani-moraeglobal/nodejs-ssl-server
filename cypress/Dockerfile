# Cypress base image
FROM cypress/included:12.0.0

# Set working directory
WORKDIR /e2e

# Copy the Cypress test files
COPY cypress /e2e/cypress
COPY cypress.json /e2e/
COPY package.json /e2e/

# Install dependencies (if necessary)
RUN npm install

# Run the Cypress tests
CMD ["npm", "run", "test:headless"]
