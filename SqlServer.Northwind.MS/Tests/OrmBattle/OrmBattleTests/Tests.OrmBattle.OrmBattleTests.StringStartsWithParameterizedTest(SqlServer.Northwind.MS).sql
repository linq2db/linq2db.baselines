-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @likeA NVarChar(4000) -- String
SET     @likeA = N'A%'
DECLARE @likeL NVarChar(4000) -- String
SET     @likeL = N'L%'

SELECT
	[c_1].[CustomerID],
	[c_1].[CompanyName],
	[c_1].[ContactName],
	[c_1].[ContactTitle],
	[c_1].[Address],
	[c_1].[City],
	[c_1].[Region],
	[c_1].[PostalCode],
	[c_1].[Country],
	[c_1].[Phone],
	[c_1].[Fax]
FROM
	[Customers] [c_1]
WHERE
	[c_1].[CustomerID] LIKE @likeA ESCAPE N'~' OR [c_1].[CustomerID] LIKE @likeL ESCAPE N'~'

