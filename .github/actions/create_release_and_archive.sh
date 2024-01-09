set -o errexit -o nounset -o pipefail

TAG="${1#v}"

# Check if an argument is provided
if [ $# -eq 0 ]; then
  echo "No argument provided."
  exit 1
fi

cat > release_notes.txt << EOF
## Installation

\`\`\`bash
pip install package==${TAG}
\`\`\`
EOF
