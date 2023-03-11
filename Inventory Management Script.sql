/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT * FROM [AdventureWorks2019].[Production].[ProductCategory]  ---4 ROWS

--SELECT *   FROM [AdventureWorks2019].[Production].[Product]   --504 ROWS

--SELECT *   FROM [AdventureWorks2019].[Production].[Location]   --14 ROWS

--SELECT * FROM [AdventureWorks2019].[Production].[ProductSubcategory]  ---37 ROWS

--SELECT * FROM [AdventureWorks2019].[Production].[ProductInventory]  ---- 1069 rows

--select * from Production.ScrapReason  ---16 rows

--select * from Production.WorkOrder   -- 72591 rows

--select * from Production.WorkOrderRouting   -- 67131 rows

--select * from Sales.SalesOrderDetail   -- 121317 rows


--DROP VIEW IF EXISTS Production.Product_view;

--GO

--CREATE VIEW Production.Product_view AS

--SELECT [ProductID], [Name] as ProductName,[ProductNumber] 
--      ,[MakeFlag], [FinishedGoodsFlag] as SellableProduct
--      ,[Color] as ProductColor, [SafetyStockLevel] as MinInvQty
--      ,[ReorderPoint] as Reorder, [StandardCost]
--      ,[ListPrice] as SellingCost, [Size] as ProductSize
--      ,[SizeUnitMeasureCode], [WeightUnitMeasureCode]
--      ,[Weight] as ProductWeight, [DaysToManufacture] 
--      ,[ProductLine], [Class], [Style]
--      ,[ProductSubcategoryID],[ProductModelID]
--      ,[SellStartDate], [SellEndDate]
--      ,[DiscontinuedDate], [rowguid], [ModifiedDate]
--	  ,CASE WHEN MakeFlag  = '0' THEN 'Purchased'
--		  ELSE 'Manufactured' END as ManufacturingPosition
--	  ,CASE WHEN [FinishedGoodsFlag] = '0' THEN 'NotSellable'
--		  ELSE 'Sellable' END as SellingPosition
--	  ,CASE WHEN [ProductLine] = 'R' THEN 'Road'
--	        WHEN [ProductLine] = 'M' THEN 'Mountain'
--			WHEN [ProductLine] = 'T' THEN 'Touring'
--			WHEN [ProductLine] = 'S' THEN 'Standard'
--		    ELSE 'Null' END as ProductRoute
--	 ,CASE WHEN [Class] = 'H' THEN 'High'
--	        WHEN [Class] = 'M' THEN 'Medium'
--			WHEN [Class] = 'L' THEN 'Low'
--		    ELSE 'Null' END as Classy
--	,CASE WHEN [Style] = 'W' THEN 'Women'
--	        WHEN [Style] = 'M' THEN 'Mens'
--			WHEN [Style] = 'U' THEN 'Universal'
--		    ELSE 'Null' END as Stylish
-- FROM [AdventureWorks2019].[Production].[Product]



 --------------------------------------------------------------------------------------
-- DROP VIEW IF EXISTS Production.Location_view;

--GO

--CREATE VIEW Production.Location_view AS
 
-- SELECT  [LocationID]
--      ,[Name] as LocationDescription
--      ,[CostRate]
--      ,[Availability] as WorkCapacity_Hr
--      ,[ModifiedDate]
--  FROM [AdventureWorks2019].[Production].[Location]

   --------------------------------------------------------------------------------------

--DROP VIEW IF EXISTS Production.ProductCategory_view;

--GO

--CREATE VIEW Production.ProductCategory_view AS

--SELECT [ProductCategoryID]
--      ,[Name] as CategoryDescription
--      ,[rowguid]
--      ,[ModifiedDate]
--  FROM [AdventureWorks2019].[Production].[ProductCategory]

 --------------------------------------------------------------------------------------

-- DROP VIEW IF EXISTS Production.ProductSubcategory_view;

--GO

--CREATE VIEW Production.ProductSubcategory_view AS

-- SELECT [ProductSubcategoryID]
--      ,[ProductCategoryID]
--      ,[Name] as SubCategoryDescription
--      ,[rowguid]
--      ,[ModifiedDate]
--  FROM [AdventureWorks2019].[Production].[ProductSubcategory]

 --------------------------------------------------------------------------------------

--DROP VIEW IF EXISTS Production.ProductInventory_view;

--GO

--CREATE VIEW Production.ProductInventory_view AS

--SELECT [ProductID]
--      ,[LocationID]
--      ,[Shelf] as StorageCompartment
--      ,[Bin] as StorageContainer
--      ,[Quantity]
--      ,[rowguid]
--      ,[ModifiedDate]
--  FROM [AdventureWorks2019].[Production].[ProductInventory]

--   --------------------------------------------------------------------------------------

--DROP VIEW IF EXISTS Production.ScrapReason_view;

--GO

--CREATE VIEW Production.ScrapReason_view AS

--SELECT  [ScrapReasonID]
--      ,[Name] as FailureDescription
--      ,[ModifiedDate]
--  FROM [AdventureWorks2019].[Production].[ScrapReason]

--   --------------------------------------------------------------------------------------


--DROP VIEW IF EXISTS Production.WorkOrder_view;

--GO

--CREATE VIEW Production.WorkOrder_view AS

--SELECT [WorkOrderID]
--      ,[ProductID]
--      ,[OrderQty]
--      ,[StockedQty]
--      ,[ScrappedQty]
--      ,[StartDate]
--      ,[EndDate]
--      ,[DueDate]
--      ,[ScrapReasonID]
--      ,[ModifiedDate]
--  FROM [AdventureWorks2019].[Production].[WorkOrder]

--   --------------------------------------------------------------------------------------


--DROP VIEW IF EXISTS Production.WorkOrderRouting_view;

--GO

--CREATE VIEW Production.WorkOrderRouting_view AS

--SELECT [WorkOrderID]
--      ,[ProductID]
--      ,[OperationSequence]
--      ,[LocationID]
--      ,[ScheduledStartDate]
--      ,[ScheduledEndDate]
--      ,[ActualStartDate]
--      ,[ActualEndDate]
--      ,[ActualResourceHrs]
--      ,[PlannedCost]
--      ,[ActualCost]
--      ,[ModifiedDate]
--  FROM [AdventureWorks2019].[Production].[WorkOrderRouting]


--   --------------------------------------------------------------------------------------

--DROP VIEW IF EXISTS Sales.SalesOrderDetails_view;

--GO

--CREATE VIEW Sales.SalesOrderDetail_view AS

--SELECT  [SalesOrderID]
--      ,[SalesOrderDetailID]
--      ,[CarrierTrackingNumber]
--      ,[OrderQty]
--      ,[ProductID]
--      ,[SpecialOfferID]
--      ,[UnitPrice]
--      ,[UnitPriceDiscount]
--      ,[LineTotal]
--      ,[rowguid]
--      ,[ModifiedDate]
--  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]

---------------------------------------------------------------------------------
DROP VIEW IF EXISTS Sales.SalesOrderHeader_view;

GO

CREATE VIEW Sales.SalesOrderHeader_view AS


SELECT  [SalesOrderID]
      ,[RevisionNumber], [OrderDate]
      ,[DueDate], [ShipDate], [Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[TerritoryID]
      ,[BillToAddressID]
      ,[ShipToAddressID]
      ,[ShipMethodID]
      ,[CreditCardID]
      ,[CreditCardApprovalCode]
      ,[CurrencyRateID]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[Comment]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]