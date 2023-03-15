FROM node:18-alpine

ENV SHOPIFY_API_KEY=4174af9a9aea15b0dc8482ffaddbdcca
ENV SHOPIFY_API_SECRET=1e5457f6da81f8dd2b4571d601b84e25
ENV SCOPES=write_products
ENV HOST=https://mtsta1-production.up.railway.app
ENV PORT=443
EXPOSE 8081
WORKDIR /app
COPY web .
RUN npm install
RUN cd frontend && npm install && npm run build
CMD ["npm", "run", "serve"]
