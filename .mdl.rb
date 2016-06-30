all
exclude_rule 'MD002'  # Start with h2 header, MD002 not parametrizable
exclude_rule 'MD013'  # Line length >80 in code blocks
exclude_rule 'MD032'  # False positive due to YAML front matter
exclude_rule 'MD033'  # Allow HTML, for example for embedded videos
exclude_rule 'MD034'  # Bare URL warning with long URLs split over 2 lines
exclude_rule 'MD041'  # First line cannot be a top level header
