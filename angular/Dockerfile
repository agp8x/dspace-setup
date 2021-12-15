FROM dspace/dspace-angular:latest as builder
ADD environment.prod.ts /app/src/environments/environment.prod.ts
RUN yarn run build:prod

FROM nginx:1.19-alpine
COPY --from=builder /app/dist/browser /usr/share/nginx/html
COPY dspace.conf /etc/nginx/conf.d/default.conf