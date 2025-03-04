PORT="${PORT:-8080}"
uvicorn open_webui.main:app  --host 0.0.0.0 --port $PORT --forwarded-allow-ips --reload