MoneyToFlows - Deployra package

Contenu:
- app.py (Flask application)
- templates/ (HTML templates)
- static/style.css (gold/black/white theme)
- requirements.txt
- Dockerfile

Important:
- Admin account auto-created at first run with email: herolemiaykou@gmail.com
  Default password: ChangeMe123! (change it after first login)
- Support email: Moneytoflows@gmail.com

Deployment (Deployra):
1. Create a new app and upload this ZIP.
2. Set env vars if you want to override defaults: ADMIN_EMAIL, ADMIN_PASSWORD, SUPPORT_EMAIL, ACHAT_LINK, PRODUCT_NAME, SEUIL_RECOMPENSE, REWARD_PER_REF
3. Visit /init after deployment to initialize DB (auto-initializes on first run too).
