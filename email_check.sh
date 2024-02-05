#!/bin/bash

email_pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"
found_emails=$(grep -h -E -o "$email_pattern" ./*/*/*.txt)

if [ -n "$found_emails" ]; then
    echo "Знайдені електронні адреси:"
    echo "$found_emails"
else
    echo "Електронні адреси не знайдені у файлах."
fi
