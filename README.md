# Doserly

Personalized medication, supplement, and wellness intelligence powered by Flutter, Supabase, and Riverpod.

## Local Setup

- **[Install Flutter]** Confirm Flutter `3.24.3` (or newer) is on your PATH: `flutter --version`.
- **[Install FVM (optional)]** `dart pub global activate fvm` then `fvm install` to pin Flutter versions per project.
- **[Install dependencies]**
  ```bash
  flutter pub get
  ```
- **[Generate code]** Run after dependency changes or model edits:
  ```bash
  flutter pub run build_runner build --delete-conflicting-outputs
  ```
- **[Launch app]**
  ```bash
  flutter run --dart-define-from-file=.env/dev.json
  ```

## Environment Configuration

Runtime configuration is provided via Dart defines and consumed by `AppConfig`.

Create `.env` files per flavor (e.g., `.env/dev.json`):

```json
{
  "APP_FLAVOR": "dev",
  "SUPABASE_URL": "https://your-project.supabase.co",
  "SUPABASE_ANON_KEY": "public-anon-key",
  "ENABLE_ANALYTICS": false,
  "ENABLE_CRASH_REPORTING": false
}
```

Load them via `--dart-define-from-file` as shown above. Production/staging builds should point to their respective Supabase instances and toggle analytics/crash reporting flags as required.

## Code Quality

- **Analyze:** `flutter analyze`
- **Format:** `flutter format .`
- **Tests:** `flutter test`

All commands are wired into CI so local runs stay consistent with automation.

## CI Pipeline

GitHub Actions workflow `.github/workflows/ci.yaml` executes on push/PR:

- installs Flutter
- restores pub cache
- runs `flutter analyze`
- runs `flutter test`
- validates generated files via `flutter pub run build_runner build --delete-conflicting-outputs` in dry-run mode

## Project Structure Highlights

- `lib/app` – Application entry widgets and theming
- `lib/bootstrap.dart` – Unified initialization (Supabase, ProviderScope)
- `lib/core/` – Configuration, providers, routing
- `lib/domain/` – Freezed entities and repository contracts
- `lib/features/` – Feature modules (UI + state)
- `test/` – Widget/unit tests

## Additional Tooling

Recommended VS Code extensions: Flutter, Dart, Riverpod Inspector. Configure `melos`/`very_good_cli` later if monorepo tooling becomes necessary.
