# SAP - ABAP | BOM MANAGEMENT PROJECT
## Production Capacity Report

This ABAP project dynamically calculates current production capacity by combining and processing data from two different SAP database tables:
- **BOM List (Bill of Materials)**
- **Component Material Stock List**

The system processes this data to determine how many units can be produced based on current stock levels, and displays the results in an interactive ALV Grid enriched with icons, colors, and navigation features for quick decision-making.
### IDEA CHART
---
![Image](https://github.com/user-attachments/assets/65734458-33bf-4b63-9b2c-027499682b2d)

### Core Features

- **BOM & Stock Data Integration**
  - Reads and processes data from two independent Z-tables:  
    - **Bill of Materials List** (`ZDC_BOM2_DT`)  
    - **Component Materials Stock List** (`ZDC_STOCK_DT`)  
  - Automatically calculates **production capacity** based on real-time stock availability.

- **Custom SAP GUI Screen (0100)**
  - **TABSTRIP control** to switch between BOM view and Stock view.
  - Interactive buttons to **Add**, **Update**, **Delete**, or **Refresh** records.
  - On-demand popups to display BOM List or Component Material Stock List in ALV format.

- **Interactive ALV Grid**
  - **Dynamic Field Catalog** generation based on database structure.
  - Color-coded rows for stock status:
    - 🟢 Green → Sufficient stock
    - 🟡 Yellow → Limited stock
    - 🔴 Red → Critical stock
  - Icons indicating critical or limited stock.
  - Totals row at the bottom for quick summaries.
  - Sorting, filtering, and export options.

- **Hotspot Navigation**
  - Clicking a product in the **Main Product** column opens its **external product page** (e.g., BMW Product Detail page).

- **Enhanced User Guidance**
  - **Top of Page:** Displays process explanation and legend for icons/colors.
  - **End of Page:** Shows total counts by stock category.
  - **Tooltips** and descriptive column headers for better UX.

- **Data Validation**
  - Input checks before database operations.
  - User-friendly success/error messages.
    

### PROCESS FLOWCHART
---
![Image](https://github.com/user-attachments/assets/f026f532-ca40-44e1-a803-b3d531ad7dc9)

##  Technical Details & Project Structure
- **Language:** SAP - ABAP
- **Main Program:** `ZDC_BOM_MANAGEMENT`
- **Includes:**
  - `ZDC_BOM_MANAGEMENT_TOP` – Global data definitions                                  
  - `ZDC_BOM_MANAGEMENT_CLASS` – Main classes (`BOM_LCL_CLASS`, `CL_EVENT_RECEIVER`)     
  - `ZDC_BOM_MANAGEMENT_MDL` – Screen modules (PBO, PAI)                                 
- **Dynamic ALV** implementation with Field Symbols (`<gt_alv>`, `<gs_alv>`, `<gf_alv>`).
- **Screens**
  - Main Screen  (0100): Producibility Quantity Detailed ALV with navigation buttons.
  - Popup Screen (0200): Stock List (ALV).
  - Popup Screen (0300): BOM List (ALV).


## 📷 Screenshots

 **Main Screen  (0100):** Producibility Quantity Detailed ALV with navigation buttons.
 ![Image](https://github.com/user-attachments/assets/1d40799d-11d0-4c66-ae24-ef89b7d7e832)
 
 ---
 
**Main Screen  (0100):** *Sorted View*
![Image](https://github.com/user-attachments/assets/83c7002c-b26e-4280-8947-572549571878)

--- 

**Popup Screen (0200):** *Stock List (ALV)*
![Image](https://github.com/user-attachments/assets/8568fc29-3195-401e-8b5b-da9f7b0379c9)

---
 
**Popup Screen (0300):** *BOM List (ALV)*
![Image](https://github.com/user-attachments/assets/861a0865-304c-453f-92d7-69d4670170db)

---

**Main Product Column:** *Hotspot Navigation*
![Image](https://github.com/user-attachments/assets/3358b159-dec8-47a7-80ad-af07f71df397)

---
 
**Tooltip texts**
![Image](https://github.com/user-attachments/assets/0de0919d-9f13-4484-9d9e-8e7fda2bfff7)

---
## Author

**Demet Çekiç** – SAP ABAP Developer / Architect
-  [demetcekic@gmail.com](mailto:demetcekic@gmail.com)  
-  [LinkedIn](https://www.linkedin.com/in/demet-cekic) | [GitHub](https://github.com/DemetCekic)

Feel free to get in touch for collaboration or feedback!

## License

This project is licensed under the [MIT License](LICENSE).
