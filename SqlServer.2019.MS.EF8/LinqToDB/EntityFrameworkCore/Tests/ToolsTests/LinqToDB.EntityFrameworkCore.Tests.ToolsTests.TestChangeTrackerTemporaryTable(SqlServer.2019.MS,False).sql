--  SqlServer.2008 (asynchronously)

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



--  SqlServer.2008 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#Orders]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Orders]



