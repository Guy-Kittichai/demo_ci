# Robot Framework API CI on GitHub Actions

## Files
- `.github/workflows/robot-api.yml` — GitHub Actions workflow
- `tests/api_test.robot` — sample Robot Framework API test
- `requirements.txt` — Python dependencies

## How to use
1. Copy all files into the root of your GitHub repository.
2. Commit and push to your default branch.
3. Open the **Actions** tab in GitHub.
4. Run the workflow manually or trigger it with a push.

## Local run
```bash
pip install -r requirements.txt
robot -d results tests/
```

## Notes
- If your default branch is not `main`, edit `.github/workflows/robot-api.yml`.
- The sample test uses a public demo API: `https://jsonplaceholder.typicode.com/posts/1`
