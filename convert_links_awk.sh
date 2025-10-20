#!/bin/bash

# Advanced link conversion using awk for better pattern matching
# This script uses awk to handle more complex link patterns

echo "🔄 Advanced link conversion using awk..."

cd /Users/mediabooth1/Sites/development/swc-sitedev-2025/current

# Create awk script for link conversion
cat > convert_links.awk << 'EOF'
BEGIN {
    # Define mapping array
    mapping["https://shekinahworship.com/"] = "index.html"
    mapping["https://shekinahworship.com/about-us/"] = "about-us.html"
    mapping["https://shekinahworship.com/statement-of-faith/"] = "statement-of-faith.html"
    mapping["https://shekinahworship.com/staff/"] = "staff.html"
    mapping["https://shekinahworship.com/contact-information/"] = "contact.html"
    mapping["https://shekinahworship.com/contact-us/"] = "contact-us.html"
    mapping["https://shekinahworship.com/first-time-visitor/"] = "first-time-visitor.html"
    mapping["https://shekinahworship.com/online-viewers/"] = "online-viewers.html"
    mapping["https://shekinahworship.com/our-schedule/"] = "schedule.html"
    mapping["https://shekinahworship.com/services/"] = "services.html"
    mapping["https://shekinahworship.com/plan-a-visit/"] = "plan-a-visit.html"
    mapping["https://shekinahworship.com/volunteer/"] = "volunteer.html"
    mapping["https://shekinahworship.com/latest-sermon/"] = "latest-sermon.html"
    mapping["https://shekinahworship.com/livestream/"] = "livestream.html"
    mapping["https://shekinahworship.com/video-archives/"] = "video-archives.html"
    mapping["https://shekinahworship.com/worship-archives/"] = "worship-archives.html"
    mapping["https://shekinahworship.com/audio-messages/"] = "audio-messages.html"
    mapping["https://shekinahworship.com/handouts/"] = "handouts.html"
    mapping["https://shekinahworship.com/shop-bookstore/"] = "shop-bookstore.html"
    mapping["https://shekinahworship.com/chinese-translation/"] = "chinese-translation.html"
    mapping["https://shekinahworship.com/fellowship-hall-calendar/"] = "fellowship-hall-calendar.html"
    mapping["https://shekinahworship.com/foundational-doctrines-of-christ/"] = "foundational-doctrines-of-christ.html"
    mapping["https://shekinahworship.com/giving/"] = "giving.html"
    mapping["https://shekinahworship.com/grocery-distribution/"] = "grocery-distribution.html"
    mapping["https://shekinahworship.com/how-do-i-become-a-christian/"] = "how-do-i-become-a-christian.html"
    mapping["https://shekinahworship.com/partner-ministries/"] = "partner-ministries.html"
    mapping["https://shekinahworship.com/shekinah-worship-phone-app-2/"] = "shekinah-worship-phone-app-2.html"
}

{
    line = $0
    # Process each mapping
    for (url in mapping) {
        gsub(url, mapping[url], line)
    }
    print line
}
EOF

# Apply awk script to all HTML files
for file in *.html; do
    if [ -f "$file" ]; then
        echo "Processing $file..."
        awk -f convert_links.awk "$file" > "$file.tmp" && mv "$file.tmp" "$file"
    fi
done

# Clean up
rm -f convert_links.awk

echo "✅ Advanced link conversion complete!"
