# SAP - ABAP | BOM MANAGEMENT PROJECT
## Production Capacity Report

This ABAP project dynamically calculates current production capacity by combining and processing data from two different SAP database tables:
- **BOM List (Bill of Materials)**
- **Component Material Stock List**

The system processes this data to determine how many units can be produced based on current stock levels, and displays the results in an interactive ALV Grid enriched with icons, colors, and navigation features for quick decision-making.
### IDEA CHART
---
![Main Screen](readme-images/main_screen.png)

### Core Features

- **Data Integration:** Reads and processes data from two independent Z-tables (Bill of Materials List & Component Materials Stock List).

- **Production Capacity Calculation:** Automatically computes producible quantities based on stock availability.

- **Interactive ALV Grid:**

   - Color-coded rows (Green / Yellow / Red) for stock status.

   - Icons for Critical Stock and Limited Stock indicators.

   - Totals displayed at the bottom row for quick summary.

- **Hotspot Navigation:** Clicking a product in the Main Product column opens its external configuration page (e.g., BMW product page).

- **Enhanced User Guidance:**

   - Top of Page: Displays process explanation and legend for icons/colors.

   - End of Page: Shows total count of products by stock category.

- **On-Demand Popups:** Main screen buttons allow opening BOM List or Component Material Stock List in popup ALV views.

### PROCESS FLOWCHART
---
![Main Screen](readme-images/main_screen.png)

##  Technical Details
- **Language:** ABAP
- **Main Program:** `ZDC_BOM_MANAGEMENT`
- **Includes:**
  - `ZDC_BOM_MANAGEMENT_TOP` – Global data definitions
  - `ZDC_BOM_MANAGEMENT_CLASS` – Main class and business logic
  - `ZDC_BOM_MANAGEMENT_MDL` – Screen modules (PBO, PAI)
- **Main Class:** `GO_MAIN`
- **Dynamic ALV** implementation with Field Symbols (`<gt_alv>`, `<gs_alv>`, `<gf_alv>`).
- **Screens**
  - Main Screen (0100): Producibility Quantity Detailed ALV with navigation buttons.
  - Popup Screen (0200): Stock List (ALV).
  - Popup Screen (0300): BOM List (ALV).
