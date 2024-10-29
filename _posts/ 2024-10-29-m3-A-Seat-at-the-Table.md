---
title: 'Mini #3 - “A Seat at the Table”: 3D Printing Parametric Furniture Designs'
date: 2024-10-29
---

# Description

This mini assignment has 2 tasks 
-Task 1: Create Parametric Table or Chair Designs
-Task 2: Fabricate Your Designs With 3D Printing

A single grasshopper file with all parts can be found [here](https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/code/M3/M3_furniture.gh) . 
All files, including code and exprted STLs can be found here  [here](https://github.com/RazanAl/CSCI-7000-Computational-Fabrication/tree/main/code/M3) 

# 1.Task 1: Create Parametric Table or Chair Designs 
For this task I made a Locket-inspired table that opens up to some storage. I initially follwoed [this youtube tutorial](https://www.youtube.com/watch?v=Q3G8ZxsRElI)  to create the table body, which I refer to as "the locket". I initially planned to follow the tutorial with the following differences: 
## 1. Paramatrize the design by using grasshopper - this took way more time than the video. 
Below you can see the GH diagrams for crating the locket frame and the hinge ( sperately). The locket dimentions and thickness, and the hinge diamater and placement relative to the locket ellipsoid are adjustable.
<img src="https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/imgs/M3_Locket.png" height="300"> 
<img src="https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/imgs/M3_Hinge.png" height="300"> 
## 2. Adjust the hinge to allow full 180 opening. 
Before the locket parts are unioned with the corresponding locket parts, the locket top is rotated 180 degrees to note and eliminate the locket side's overlap prevents the lockt from fully opening. Below is the GH flow that increases the locket rotation span then connects it to the hing parts: 
<img src="https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/imgs/M3_Combine.png" height="300"> 
## 3.Add legs to make it a table ( thogh one can ommit the legs for a little ottoman)
The GH flow below shows how the legs are created. It starts with parameturized rectangle below the locket and parallel to the xy plane, this represents where the table legs will touch the ground. 4 circles with a changable radius r are created at the vertices of the rectangle. This shape is duplicated inside the locket frame, below the storage cavity, with an optional scale-down to create tapering legs, and a scale-independent circle radius control. Each circle from the top is lofted with the corrospoding circle at the base to generate the legs. 
<img src="https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/imgs/M3_Legs.png" height="300"> 
Note that not all paramater combinations are useful, some combinations, for example, may place the legs top beyond the locket cavity,thus creating a table with protruding legs! 
## 4. Flatten the "locket top" to make a functuinak resting surface.
The simplisity of this task is reflected on the size of its GH flow below. This is as simple as splitting the top with a parallal plane. The z position of the plane is controlable, which changes the table height slightly as well as the usable flat table surface. However, the z axis can also be wrongly chosen to intersect the locket cavity, thus creating a hole in the tabletop. Unless that is what you're aiming for, then it is not wrong. 
<img src="https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/imgs/M3_Top.png" height="300"> 

## 5. Create a flat voronoi design and wrap it on the table top for a cooler asthetic - I skipped this due to time limitations first, and practicalaty/personal taste second. 
This section is left on purpose so we can all reflect on interesting yet non practical designs that are pleasing to the eyes but collect unremovable dust. 

I initially planned to use wire for pinning the hinge, but then decided to make a custom pin as seen below, where the size of hinge hole is paramaturized relative to the hinge size, and the size of the pin is paramaturized raltive to the hole size. Pin = the thinge that is inserted in the hinge to keep the 2 pieces together. 
This is the simplist pin, so it is not secure, a better version could have some form of stoppers at the end, but this somple pin should do the job for now. 

Here are some sample results for this table design: 
<img src="https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/imgs/M2_table1.png" height="300"> 
<img src="https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/imgs/M2_table2.png" height="300"> 
<img src="https://raw.githubusercontent.com/RazanAl/CSCI-7000-Computational-Fabrication/refs/heads/main/imgs/M2_table3.png" height="300"> 
Note: The fabricated variations are not neccarily from the ones shown above. 

# 2. Task 2: Fabricate Your Designs With 3D Printing
__ Comming Soon __ 
