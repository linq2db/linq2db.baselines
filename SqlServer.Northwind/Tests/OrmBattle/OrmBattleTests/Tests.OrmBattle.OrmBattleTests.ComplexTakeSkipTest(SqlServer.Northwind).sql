BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
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

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 100
DECLARE @take Int -- Int32
SET     @take = 50
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 10

SELECT
	[t2].[RequiredDate]
FROM
	(
		SELECT DISTINCT
			[o].[RequiredDate]
		FROM
			(
				SELECT
					[t1].[RequiredDate],
					[t1].[OrderDate]
				FROM
					[Orders] [t1]
				ORDER BY
					[t1].[OrderDate]
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) [o]
		WHERE
			[o].[OrderDate] IS NOT NULL
	) [t2]
ORDER BY
	[t2].[RequiredDate] DESC
OFFSET @skip_1 ROWS

