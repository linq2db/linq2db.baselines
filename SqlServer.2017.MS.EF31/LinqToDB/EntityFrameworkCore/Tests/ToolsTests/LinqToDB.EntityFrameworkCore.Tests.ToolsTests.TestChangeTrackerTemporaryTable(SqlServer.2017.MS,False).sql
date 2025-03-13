-- SqlServer.2017 (asynchronously)

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



-- SqlServer.2017 (asynchronously)

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
	[Orders] [e]



-- SqlServer.2017
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



-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#Orders]



