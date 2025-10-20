# Shekinah Worship Center Website - Complete Local Copy

This directory contains a comprehensive local copy of the shekinahworship.com website downloaded on the current date.

## Structure

### HTML Pages (25+ pages)
**Main Pages:**
- `index.html` - Homepage
- `contact.html` - Contact Information page
- `contact-us.html` - Contact Us page
- `livestream.html` - Livestream page
- `schedule.html` - Our Schedule page

**About & Information:**
- `about-us.html` - About Us page
- `statement-of-faith.html` - Statement of Faith
- `staff.html` - Staff & Leadership
- `first-time-visitor.html` - First Time Visitor
- `online-viewers.html` - Online Viewers
- `plan-a-visit.html` - Plan a Visit
- `volunteer.html` - Volunteer

**Services & Ministry:**
- `services.html` - Services
- `fellowship-hall-calendar.html` - Fellowship Hall Calendar
- `foundational-doctrines-of-christ.html` - Foundational Doctrines
- `giving.html` - Giving
- `grocery-distribution.html` - Grocery Distribution
- `handouts.html` - Handouts
- `how-do-i-become-a-christian.html` - How to Become a Christian
- `partner-ministries.html` - Partner Ministries

**Media & Archives:**
- `audio-messages.html` - Audio Messages
- `latest-sermon.html` - Latest Sermon
- `video-archives.html` - Video Archives
- `worship-archives.html` - Worship Archives
- `chinese-translation.html` - Chinese Translation

**Additional Pages:**
- `shekinah-worship-phone-app-2.html` - Phone App
- `shop-bookstore.html` - Shop/Bookstore

### Assets
- `images/` - All website images (100+ images including logos, banners, photos, staff photos, ministry images)
- `css/` - Main CSS files (theme.css, elementor-frontend.css)
- `js/` - JavaScript files (structure ready)

## Key Images Downloaded
- Shekinah Worship Center logos (multiple sizes)
- Staff and leadership photos
- Fellowship hall photos
- Prayer book banners
- Event banners (Prophetic Conference, Bill Wiese, etc.)
- Worship CD covers
- Phone app banners
- Ministry outreach photos
- Hotel and accommodation images
- Various ministry and service photos
- Book covers and announcements

## Notes
- All images maintain their original filenames
- CSS files are the main theme and Elementor styles
- HTML files contain the complete page structure
- Images are organized in the `images/` subdirectory
- CSS files are in the `css/` subdirectory
- Complete website structure preserved

## Running the Website Locally

To view the website locally with proper functionality, you'll need to run a local web server. Here are instructions for both Mac and Windows:

### 🍎 **Mac (macOS)**

#### Option 1: PHP Built-in Server (Recommended)
```bash
# Navigate to the current directory
cd /path/to/swc-sitedev-2025/current

# Start PHP server on port 8080
php -S localhost:8080

# Or use a different port if 8080 is busy
php -S localhost:3000
```

#### Option 2: Python Server
```bash
# Navigate to the current directory
cd /path/to/swc-sitedev-2025/current

# Python 3
python3 -m http.server 8080

# Or Python 2 (if available)
python -m SimpleHTTPServer 8080
```

#### Option 3: Node.js Server
```bash
# Install http-server globally (one-time setup)
npm install -g http-server

# Navigate to the current directory
cd /path/to/swc-sitedev-2025/current

# Start server
http-server -p 8080
```

### 🪟 **Windows**

#### Option 1: PHP Built-in Server (Recommended)
```cmd
# Navigate to the current directory
cd C:\path\to\swc-sitedev-2025\current

# Start PHP server on port 8080
php -S localhost:8080

# Or use a different port if 8080 is busy
php -S localhost:3000
```

#### Option 2: Python Server
```cmd
# Navigate to the current directory
cd C:\path\to\swc-sitedev-2025\current

# Python 3
python -m http.server 8080

# Or Python 2 (if available)
python -m SimpleHTTPServer 8080
```

#### Option 3: Node.js Server
```cmd
# Install http-server globally (one-time setup)
npm install -g http-server

# Navigate to the current directory
cd C:\path\to\swc-sitedev-2025\current

# Start server
http-server -p 8080
```

#### Option 4: XAMPP/WAMP (For Full PHP Environment)
1. Install XAMPP or WAMP
2. Copy the `current` folder to your web server directory:
   - XAMPP: `C:\xampp\htdocs\`
   - WAMP: `C:\wamp64\www\`
3. Start Apache in XAMPP/WAMP control panel
4. Visit `http://localhost/current/` in your browser

### 🌐 **Accessing the Website**

Once your local server is running:

1. **Open your web browser**
2. **Navigate to one of these URLs:**
   - `http://localhost:8080` (or whatever port you chose)
   - `http://127.0.0.1:8080`

3. **Start with the homepage:**
   - `http://localhost:8080/index.html`

### 📝 **Notes**
- **PHP server is recommended** as it handles most WordPress-style functionality
- **Port 8080** is commonly used, but you can use any available port (3000, 8000, etc.)
- **Some interactive features** may not work without the full WordPress backend
- **All images and styling** will display correctly with a local server
- **To stop the server**, press `Ctrl+C` in the terminal/command prompt

### 🔧 **Troubleshooting**
- **Port already in use**: Try a different port (3000, 8000, 9000)
- **PHP not found**: Install PHP or use Python/Node.js alternatives
- **Images not loading**: Ensure you're using a local server (not opening files directly)
- **CSS not working**: Check that you're accessing via `http://localhost` not `file://`
