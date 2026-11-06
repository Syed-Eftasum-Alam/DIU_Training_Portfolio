# DIU CSE Training Portfolio

A frontend-only departmental training portfolio. Plain HTML, CSS, JavaScript and JSON; no framework, package installation, build step, database, login or backend. Uses blue and green university-inspired styling with an original layout, not a copy of DIU's source theme. The text seal is a placeholder for the approved university logo.

## Run on Windows

1. Install Node.js if it is not already available.
2. Extract the entire ZIP into a folder.
3. Double-click `START-WINDOWS.cmd`, or open a terminal in this folder and run:

```sh
node serve.mjs
```

4. Open http://localhost:5173 in your browser. Keep the terminal open. Press Ctrl+C to stop.

Do not double-click index.html: browser file security can block loading content.json. The included server is only a local static preview utility, not an application backend. Any ordinary static web server also works.

## Update content without editing code

1. Open http://localhost:5173/editor.html.
2. Edit Homepage, Training Programs, Trainers, Facilitators, Collaborators or Contact.
3. Save a browser draft before leaving the editor if you want to resume later. Preview draft opens a local preview in the same tab; the editor link returns to the editor. Unsaved edits are not automatically preserved.
4. Export content.json. Replace the original content.json in this folder with the downloaded file (rename content (1).json if necessary).
5. Refresh the portfolio. Upload the updated files to your hosting to make changes public.

Browser drafts and previews do not publish changes or synchronize between devices. There is no authenticated admin area. Anyone can open the editor but nobody can change your hosted files through it. Real online multiuser editing would require a CMS or backend.

## Add photos and links

Copy image files into assets/ and enter paths such as assets/program-01.jpg. Export does not copy image files. For program galleries, enter one path per line. HTTPS image URLs also work, but self-hosted files avoid third-party dependencies. Use approved organization logos and photos with suitable permission. Use full https:// profile/organization links. Banner images have a separate description field.

## Connect programs to people

Each entry has a unique ID. Enter trainer IDs, facilitator IDs and collaborator IDs in the program form, one per line. These display the corresponding profiles on that program's detail page. If you rename or remove an ID, update the program references too. Export validates ID uniqueness and references. Programs marked Featured appear first. Search checks titles, clients and topics; the category menu filters training areas.

## Before sharing with clients

Program 1 documents the supplied July 2026 training for Titas Gas PLC employees. Program 2 documents the supplied 24 October 2026 training for COATS Bangladesh, in collaboration with SkillJobs. Add confirmed contact information. Uncheck Placeholder only after verifying an entry. No participant totals, endorsements, or testimonials have been invented. Confirm branding and replace the text seal with approved artwork if needed.

## File guide

- index.html: page shell, navigation and footer
- styles.css: colors, typography, layout and mobile styling
- app.js: public portfolio, filters, program details and routing
- content.json: all editable portfolio content
- editor.html / editor.js: browser content editor
- assets/: your images and logos
- serve.mjs: dependency-free local preview server

## Hosting

Upload index.html, styles.css, app.js, content.json and assets/ to any static web host or DIU web directory. Optionally include editor.html and editor.js. You do not need serve.mjs or START-WINDOWS.cmd on your host. No build command is required; the publish folder is the folder containing index.html. Program URLs use hash routing, so no rewrite rules are needed. The site can be hosted under a subdirectory.

The external Google Fonts stylesheet is optional; system font fallbacks work offline. Everything else can run without third-party services. Contact uses email links only once a valid email is supplied; there is no form submission service. This project has no API keys, passwords, analytics or tracking.

## Program 1: July 2026

The first program now documents AI-Powered Productivity Transformation & Strategic Leadership Training for employees of Titas Gas PLC, organized by DIU CSE in collaboration with HRDI, 16–18 July 2026. Its optimized banner, 15 photographs and original schedule PDF are in assets/ai-leadership-2026/. Trainer names and session assignments come from the supplied schedule; no attendee totals or measured outcomes are claimed. Trainer portraits are left empty because the photographs were not individually identified. The second program documents the October 2026 COATS Bangladesh training.

Program fields include organizer and participant organization links, a separate banner, schedule PDF path, photo captions and agenda entries. Each agenda line uses: Day | Time (24-hour) | Topic | Trainer | Venue. Captions match photo order. Day 3 sessions without topics in the schedule are labelled accordingly.

## Program 2: October 2026

AI-Powered Workplace Productivity & Smart Office Practices was held for COATS Bangladesh employees on 24 October 2026, organized by DIU CSE in collaboration with SkillJobs. Seven supplied HEIC photographs were converted into optimized WebP assets in assets/coats-workplace-2026/, alongside the original program-rundown.pdf. Four trainers are linked to this program; shared trainers use their existing profiles. Organizer Md. Sazzadur Ahamed and coordinator Ishmat Zahan are included under facilitation. Agenda details come from the supplied rundown. Conditional ceremony items are not asserted as confirmed outcomes; the original PDF preserves those qualifications. No participant totals, winner names, or measured outcomes are invented.

## Organization logos and additional photographs

The site uses the supplied DIU and CSE logos in its header, footer and program organizer panels. Participant company logos appear on program cards, program pages and the homepage participant section; collaborator logos appear on the homepage and relevant program pages. Logo provenance is recorded in assets/logos/SOURCES.md. Program 2 now includes 10 supplied photographs. Participant logos identify the organizations whose employees attended; they are not endorsements.
