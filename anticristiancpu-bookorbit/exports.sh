export APP_BOOKORBIT_PORT="8095"

# Segreti derivati dal seed del dispositivo: restano stabili tra un riavvio e
# l'altro, quindi la password del database continua a combaciare con i dati già
# scritti sul disco.
export APP_BOOKORBIT_DB_PASSWORD="$(derive_entropy "env-${app_entropy_identifier}-DB_PASSWORD" | head -c32)"
export APP_BOOKORBIT_JWT_SECRET="$(derive_entropy "env-${app_entropy_identifier}-JWT_SECRET" | head -c64)"
