#!/bin/bash

# Complete link conversion script for shekinahworship.com to local links
# This script converts all external links to local HTML file links

echo "🔄 Converting external links to local links..."

# Navigate to the current directory
cd /Users/mediabooth1/Sites/development/swc-sitedev-2025/current

# Create a comprehensive sed script that handles all link conversions
sed -i '' \
-e 's|href="https://shekinahworship\.com/"|href="index.html"|g' \
-e 's|href="https://shekinahworship\.com/about-us/"|href="about-us.html"|g' \
-e 's|href="https://shekinahworship\.com/statement-of-faith/"|href="statement-of-faith.html"|g' \
-e 's|href="https://shekinahworship\.com/staff/"|href="staff.html"|g' \
-e 's|href="https://shekinahworship\.com/contact-information/"|href="contact.html"|g' \
-e 's|href="https://shekinahworship\.com/contact-us/"|href="contact-us.html"|g' \
-e 's|href="https://shekinahworship\.com/first-time-visitor/"|href="first-time-visitor.html"|g' \
-e 's|href="https://shekinahworship\.com/online-viewers/"|href="online-viewers.html"|g' \
-e 's|href="https://shekinahworship\.com/our-schedule/"|href="schedule.html"|g' \
-e 's|href="https://shekinahworship\.com/services/"|href="services.html"|g' \
-e 's|href="https://shekinahworship\.com/plan-a-visit/"|href="plan-a-visit.html"|g' \
-e 's|href="https://shekinahworship\.com/volunteer/"|href="volunteer.html"|g' \
-e 's|href="https://shekinahworship\.com/latest-sermon/"|href="latest-sermon.html"|g' \
-e 's|href="https://shekinahworship\.com/livestream/"|href="livestream.html"|g' \
-e 's|href="https://shekinahworship\.com/video-archives/"|href="video-archives.html"|g' \
-e 's|href="https://shekinahworship\.com/worship-archives/"|href="worship-archives.html"|g' \
-e 's|href="https://shekinahworship\.com/audio-messages/"|href="audio-messages.html"|g' \
-e 's|href="https://shekinahworship\.com/handouts/"|href="handouts.html"|g' \
-e 's|href="https://shekinahworship\.com/shop-bookstore/"|href="shop-bookstore.html"|g' \
-e 's|href="https://shekinahworship\.com/chinese-translation/"|href="chinese-translation.html"|g' \
-e 's|href="https://shekinahworship\.com/fellowship-hall-calendar/"|href="fellowship-hall-calendar.html"|g' \
-e 's|href="https://shekinahworship\.com/foundational-doctrines-of-christ/"|href="foundational-doctrines-of-christ.html"|g' \
-e 's|href="https://shekinahworship\.com/giving/"|href="giving.html"|g' \
-e 's|href="https://shekinahworship\.com/grocery-distribution/"|href="grocery-distribution.html"|g' \
-e 's|href="https://shekinahworship\.com/how-do-i-become-a-christian/"|href="how-do-i-become-a-christian.html"|g' \
-e 's|href="https://shekinahworship\.com/partner-ministries/"|href="partner-ministries.html"|g' \
-e 's|href="https://shekinahworship\.com/shekinah-worship-phone-app-2/"|href="shekinah-worship-phone-app-2.html"|g' \
*.html

echo "✅ Link conversion complete!"
echo "📊 Converted links in all HTML files:"
echo "   - Homepage links → index.html"
echo "   - About pages → about-us.html, statement-of-faith.html, staff.html"
echo "   - Contact pages → contact.html, contact-us.html"
echo "   - Visitor pages → first-time-visitor.html, online-viewers.html, plan-a-visit.html"
echo "   - Service pages → services.html, schedule.html, volunteer.html"
echo "   - Media pages → latest-sermon.html, livestream.html, video-archives.html, worship-archives.html, audio-messages.html"
echo "   - Resource pages → handouts.html, shop-bookstore.html, chinese-translation.html"
echo "   - Ministry pages → fellowship-hall-calendar.html, foundational-doctrines-of-christ.html, giving.html, grocery-distribution.html, how-do-i-become-a-christian.html, partner-ministries.html, shekinah-worship-phone-app-2.html"

echo ""
echo "🌐 Your website is now ready for local hosting!"
echo "   Run: php -S localhost:8080"
echo "   Then visit: http://localhost:8080"
