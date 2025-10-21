# Changelog

All notable changes to this project will be documented in this file.

## [1.0.1] - 2025-10-21

### Added

#### Documentation Updates

- **Footer Component Documentation**: Added comprehensive documentation for the Footer.svelte component in COMPONENTS.md
- **Side Panel Extension Clarification**: Updated FEATURES.md to correctly describe the extension as a Chrome side panel (not popup-based)
- **Project Structure Updates**: Updated project structure diagrams to reflect actual codebase organization
- **Component Inventory**: Added missing Footer.svelte to component listings and structure diagrams

### Fixed

- **FEATURES.md Corrections**: Removed references to non-existent shell scripts directory
- **Extension Type Accuracy**: Corrected extension description from popup-based to side panel-based
- **Component Documentation**: Ensured all existing components are properly documented

### Modified

- Updated COMPONENTS.md with Footer component details and corrected structure
- Updated FEATURES.md to reflect current extension architecture and remove outdated features
- Enhanced project structure documentation across all files

---

## [1.0.0] - 2025-10-19

### Added

#### License & Attribution

- **MIT License** (`LICENSE.md`) - Open source license for the project
- **Author attribution** in README with Ko-fi and GitHub links
- **Ko-fi support integration** throughout the UI

#### Ko-fi Support Features

- **Help Page Support Card** - Prominent gradient card with:
  - Orange-to-pink gradient background
  - Coffee and Heart icons
  - Call-to-action button linking to ko-fi.com/trentbrew
  - Thank you message
- **Footer Component** (`/src/lib/components/Footer.svelte`) with:
  - "Made with ❤️ by Trent Brew" attribution
  - Copyright notice with MIT License
  - "Buy me a coffee" link with coffee icon
  - Animated heart icon
  - Clean, minimal design that works with all themes
- **README Support Section** with:
  - Ko-fi button badge
  - Support link
  - Author information with Ko-fi and GitHub links

#### Theme System

- **33 DaisyUI themes** available via Theme Controller
- **LocalStorage persistence** for theme preference
- **Theme categories** (Light & Dark) in dropdown
- **Visual indicators** for active theme

#### Navigation

- **4-page navigation** system with dock icons
- **Components page** added to navbar
- **Active state highlighting** in navigation

#### Dialog System

- **3 dialog types**: Basic Modal, Confirmation Dialog, Form Dialog
- **Real-time form validation** in Form Dialog
- **Dynamic button states** based on validation
- **Success alerts** for completed forms

#### Icon System

- **Lucide Svelte icons** integrated (30+ icons)
- **Coffee and Heart icons** for Ko-fi support
- **Chrome CSP compliant** SVG icons
- **Theme-aware** with currentColor support

### Modified

- Updated README with support section and author info
- Enhanced Help page with Ko-fi support card
- Added Footer to HomePage
- Expanded icon registry with Coffee and Heart icons

### Technical Details

- All Ko-fi links open in new tab with `target="_blank"`
- Security: `rel="noopener noreferrer"` on external links
- Accessibility: Proper ARIA labels and semantic HTML
- Responsive: Works on all screen sizes
- Theme compatible: Looks great on all 33 themes

---

## Support the Project

---

**Author**: Trent Brew  
**License**: MIT
