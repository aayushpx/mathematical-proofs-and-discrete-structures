#!/usr/bin/env bash
# Compile all LaTeX documents in the repository.
set -e

FILES=(
    logic/propositional-logic.tex
    induction/mathematical-induction.tex
    relations/sets-and-relations.tex
    functions/functions.tex
    algebra/algebraic-structures.tex
    cryptography/rsa-cryptography.tex
    coding-theory/linear-codes.tex
    graph-theory/graph-theory.tex
)

for f in "${FILES[@]}"; do
    echo "==> Compiling $f"
    latexmk -pdf -cd "$f"
done

echo "==> All documents compiled successfully."
