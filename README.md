# vds-pilotlogai-infra

This repository manages GCP/Firebase infrastructure for the project using Terraform. It is modular, environment-driven, and production-ready.

## Structure

- `bootstrap/` — Project creation, API enablement, billing setup
- `environments/` — Per-environment configs (dev, staging, prod)
- `modules/` — Reusable modules (artifact_registry, cloudfunctions, iam, firebase, monitoring, storage)
- `shared/` — Provider and shared config
- `scripts/` — Helper scripts
- `Makefile` — Common Terraform tasks

## Usage

1. **Bootstrap the GCP project**
   - Edit `bootstrap/terraform.tfvars`
   - Run `./scripts/bootstrap.sh`
2. **Configure environments**
   - Edit `environments/<env>/terraform.tfvars`
   - Run `./scripts/apply.sh environments/<env>`
3. **Modules**
   - Add or update modules in `modules/`

## Modules
- **artifact_registry**: Artifact Registry repositories
- **cloudfunctions**: Google Cloud Functions
- **iam**: Service accounts and IAM roles
- **firebase**: Firebase project and web app
- **monitoring**: Monitoring, alerting, uptime checks
- **storage**: Cloud Storage buckets

## Tips
- Use `Makefile` for quick commands: `make plan`, `make apply`, etc.
- Use separate state for each environment.
- Document changes and onboard your team! 