## Checklist

- [ ] Rename the folder `./src/package` to `./src/<your-package-name>`
- [ ] Rename `package` in L14 of [`SECURITY.md`](`./.github/SECURITY.md`) to `<your-package-name>` and the correct email for vulnerability.
- [ ] Update `./.github/CODEOWNERS` to include correct CODEOWNERS.
- [ ] Update the following field in `pyproject.toml`:
  - `project.name=...` -> `project.name=<your-package-name>`
  - `project.description=...` -> `project.description=<your-package-description>`
  - `project.authors=...` -> `project.authors=[{name=<your-name>, email=<your-email>}]`
  - `tool.hatch.build.hooks.vcs."version-file"=...` -> `tool.hatch.build.hooks.vcs."version-file"="src/<your-package-name>/_version.py"`
    Consult [PEP621](https://peps.python.org/pep-0621/) for more information.
- [ ] Run `bash ./all.sh`
- [ ] Setup the following secrets:
  - `GPG_PRIVATE_KEY`
  - `GPG_PASSPHRASE`
  - `PACKAGE_PAT`: Personal Access Token with `repo` scope (you can just use `rg` to search for all `PACKAGE_PAT` and rename it to whatever you want)

### _OPTIONAL_

- [ ] Change indent-style to 4 if you wish in `.editorconfig`, `.ruff.toml`
