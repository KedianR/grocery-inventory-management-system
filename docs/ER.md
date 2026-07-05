                            +----------------+
                            |    Category    |
                            +----------------+
                            | Category_ID PK |
                            | Name           |
                            +----------------+
                                    |
                                    | 1
                                    |
                                    | Has
                                    |
                                    | N
                            +----------------+
                            |    Product     |
                            +----------------+
                            | Product_ID PK  |
                            | Name           |
                            | Brand          |
                            | Barcode        |
                            | Selling_Price  |
                            | Cost_Price     |
                            | Current_Stock  |
                            | Unit           |
                            | Expiry_Date    |
                            | Minimum_Stock  |
                            +----------------+
                              /           \
                             /             \
                            /               \
                         1 /                 \ 1
                          /                   \
                         N                     N
               +----------------+      +------------------+
               | Purchase_Items |      |    Sale_Items    |
               +----------------+      +------------------+
               | Purchase_ID FK |      | Sale_ID FK       |
               | Product_ID FK  |      | Product_ID FK    |
               | Quantity       |      | Quantity         |
               | Cost_Price     |      | Selling_Price    |
               +----------------+      +------------------+
                      |                         |
                      | N                       | N
                      |                         |
                      | 1                       | 1
              +----------------+        +----------------+
              |    Purchase    |        |      Sale      |
              +----------------+        +----------------+
              | Purchase_ID PK |        | Sale_ID PK     |
              | Date           |        | Date           |
              | Supplier_ID FK |        | Payment_Method |
              | Invoice_No     |        | Payment_Ref    |
              +----------------+        +----------------+
                      |
                      | N
                      |
                      | 1
              +----------------+
              |    Supplier    |
              +----------------+
              | Supplier_ID PK |
              | Name           |
              | Phone          |
              | Address        |
              +----------------+