BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 15
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[CustomerID],
	[t1].[CompanyName],
	[t1].[ContactName],
	[t1].[ContactTitle],
	[t1].[Address],
	[t1].[City],
	[t1].[Region],
	[t1].[PostalCode],
	[t1].[Country],
	[t1].[Phone],
	[t1].[Fax]
FROM
	[Customers] [t1]
ORDER BY
	[t1].[CustomerID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

