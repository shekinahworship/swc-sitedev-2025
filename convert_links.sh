#!/bin/bash

# Script to convert all external shekinahworship.com links to local links
# Run this from the current directory

echo "Converting external links to local links..."

# Define the mapping of external URLs to local files
declare -A link_mapping=(
    ["https://shekinahworship.com/"]="index.html"
    ["https://shekinahworship.com/about-us/"]="about-us.html"
    ["https://shekinahworship.com/statement-of-faith/"]="statement-of-faith.html"
    ["https://shekinahworship.com/staff/"]="staff.html"
    ["https://shekinahworship.com/contact-information/"]="contact.html"
    ["https://shekinahworship.com/contact-us/"]="contact-us.html"
    ["https://shekinahworship.com/first-time-visitor/"]="first-time-visitor.html"
    ["https://shekinahworship.com/online-viewers/"]="online-viewers.html"
    ["https://shekinahworship.com/our-schedule/"]="schedule.html"
    ["https://shekinahworship.com/services/"]="services.html"
    ["https://shekinahworship.com/plan-a-visit/"]="plan-a-visit.html"
    ["https://shekinahworship.com/volunteer/"]="volunteer.html"
    ["https://shekinahworship.com/latest-sermon/"]="latest-sermon.html"
    ["https://shekinahworship.com/livestream/"]="livestream.html"
    ["https://shekinahworship.com/video-archives/"]="video-archives.html"
    ["https://shekinahworship.com/worship-archives/"]="worship-archives.html"
    ["https://shekinahworship.com/audio-messages/"]="audio-messages.html"
    ["https://shekinahworship.com/handouts/"]="handouts.html"
    ["https://shekinahworship.com/shop-bookstore/"]="shop-bookstore.html"
    ["https://shekinahworship.com/chinese-translation/"]="chinese-translation.html"
    ["https://shekinahworship.com/fellowship-hall-calendar/"]="fellowship-hall-calendar.html"
    ["https://shekinahworship.com/foundational-doctrines-of-christ/"]="foundational-doctrines-of-christ.html"
    ["https://shekinahworship.com/giving/"]="giving.html"
    ["https://shekinahworship.com/grocery-distribution/"]="grocery-distribution.html"
    ["https://shekinahworship.com/how-do-i-become-a-christian/"]="how-do-i-become-a-christian.html"
    ["https://shekinahworship.com/partner-ministries/"]="partner-ministries.html"
    ["https://shekinahworship.com/shekinah-worship-phone-app-2/"]="shekinah-worship-phone-app-2.html"
)

# Process each HTML file
for html_file in *.html; do
    if [ -f "$html_file" ]; then
        echo "Processing $html_file..."
        
        # Apply each mapping
        for external_url in "${!link_mapping[@]}"; do
            local_file="${link_mapping[$external_url]}"
            # Replace href attributes
            sed -i '' "s|href=\"$external_url\"|href=\"$local_file\"|g" "$html_file"
            # Replace any other occurrences
            sed -i '' "s|$external_url|$local_file|g" "$html_file"
        done
        
        echo "  ✓ Converted links in $html_file"
    fi
done

echo "Link conversion complete!"
