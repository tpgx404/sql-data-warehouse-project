CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN

-- It is good practice to truncate the first table too!
TRUNCATE TABLE bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM 'C:\dwh-project\cust_info.csv'
WITH (
     FIRSTROW = 2,
     FIELDTERMINATOR = ',' ,
     TABLOCK
) ;

TRUNCATE TABLE bronze.crm_prd_info ;
BULK INSERT bronze.crm_prd_info
FROM 'C:\dwh-project\prd_info.csv'
WITH (
     FIRSTROW = 2,
     FIELDTERMINATOR = ',' ,
     TABLOCK
) ;

TRUNCATE TABLE bronze.crm_sales_details ;
BULK INSERT bronze.crm_sales_details
FROM 'C:\dwh-project\sales_details.csv'
WITH (
     FIRSTROW = 2,
     FIELDTERMINATOR = ',' ,
     TABLOCK
) ;

TRUNCATE TABLE bronze.erp_loc_a101 ;
BULK INSERT bronze.erp_loc_a101
FROM 'C:\dwh-project\LOC_A101.csv'
WITH (
     FIRSTROW = 2,
     FIELDTERMINATOR = ',' ,
     TABLOCK
) ;

TRUNCATE TABLE bronze.erp_cust_az12 ;
BULK INSERT bronze.erp_cust_az12
FROM 'C:\dwh-project\CUST_AZ12.csv'
WITH (
     FIRSTROW = 2,
     FIELDTERMINATOR = ',' ,
     TABLOCK
) ;

TRUNCATE TABLE bronze.erp_px_cat_g1v2 ;
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\dwh-project\PX_CAT_G1V2.csv'
WITH (
     FIRSTROW = 2,
     FIELDTERMINATOR = ',' ,
     TABLOCK
) ;
END 
