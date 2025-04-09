--  SqlServer.2016 (asynchronously)

CREATE TABLE [tempdb]..[#Orders]
(
	[IsDeleted]      bit          NOT NULL,
	[OrderID]        int          NOT NULL,
	[CustomerID]     nvarchar(5)      NULL,
	[EmployeeID]     int              NULL,
	[OrderDate]      datetime         NULL,
	[RequiredDate]   datetime         NULL,
	[ShippedDate]    datetime         NULL,
	[ShipVia]        int              NULL,
	[Freight]        money            NULL,
	[ShipName]       nvarchar(40)     NULL,
	[ShipAddress]    nvarchar(60)     NULL,
	[ShipCity]       nvarchar(15)     NULL,
	[ShipRegion]     nvarchar(15)     NULL,
	[ShipPostalCode] nvarchar(10)     NULL,
	[ShipCountry]    nvarchar(15)     NULL,

	PRIMARY KEY CLUSTERED ([OrderID])
)



--  SqlServer.2016 (asynchronously)

INSERT INTO [tempdb]..[#Orders]
(
	[IsDeleted],
	[OrderID],
	[CustomerID],
	[EmployeeID],
	[OrderDate],
	[RequiredDate],
	[ShippedDate],
	[ShipVia],
	[Freight],
	[ShipName],
	[ShipAddress],
	[ShipCity],
	[ShipRegion],
	[ShipPostalCode],
	[ShipCountry]
)
SELECT
	[t1].[IsDeleted],
	[t1].[OrderID],
	[t1].[CustomerID],
	[t1].[EmployeeID],
	[t1].[OrderDate],
	[t1].[RequiredDate],
	[t1].[ShippedDate],
	[t1].[ShipVia],
	[t1].[Freight],
	[t1].[ShipName],
	[t1].[ShipAddress],
	[t1].[ShipCity],
	[t1].[ShipRegion],
	[t1].[ShipPostalCode],
	[t1].[ShipCountry]
FROM
	[Orders] [t1]



--  SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[e].[IsDeleted],
	[e].[OrderID],
	[e].[CustomerID],
	[e].[EmployeeID],
	[e].[OrderDate],
	[e].[RequiredDate],
	[e].[ShippedDate],
	[e].[ShipVia],
	[e].[Freight],
	[e].[ShipName],
	[e].[ShipAddress],
	[e].[ShipCity],
	[e].[ShipRegion],
	[e].[ShipPostalCode],
	[e].[ShipCountry]
FROM
	[tempdb]..[#Orders] [e]
WHERE
	[e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0



--  SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#Orders]



