#!/usr/bin/python
import sys

if len(sys.argv) < 2:
    sys.stderr.write(f'Usage: {sys.argv[0]} font_name.\n')
    sys.exit(1)

font_name = sys.argv[1]

body = f"""
font:
  normal:
    family: {font_name}
    style: Mono

  bold:
    family: {font_name}
    style: Bold

  italic:
    family: {font_name}
    style: Italic

  size: 17.0
"""

file_name = sys.argv[1].strip().replace(' ', '_') + '.yml'
with open(file_name, 'w') as f:
    f.write(body)
