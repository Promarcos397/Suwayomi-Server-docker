# Simple Dockerfile for Railway/Render
# Uses the pre-built stable image instead of compiling from source
FROM ghcr.io/suwayomi/suwayomi-server:stable

# Expose the default port
EXPOSE 4567

# Optional: Set default environment variables (can be overridden in Railway)
ENV WEB_UI_ENABLED=true
ENV TZ=Etc/UTC

# OPTIMIZATION: Limit Java memory usage to prevent crashes on Free Tier (512MB RAM)
# -Xmx384m sets max heap to 384MB, leaving ~128MB for OS/Overhead
ENV JAVA_OPTS="-Xmx384m -Xms200m"
