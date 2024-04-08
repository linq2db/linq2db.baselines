﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Length Int -- Int32
SET     @Length = 4

SELECT TOP (@take)
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
	IIF(CharIndex(N't', Left([c_1].[City], 4), 2) = 0, -1, @Length - CharIndex(N't', Reverse(Substring([c_1].[City], 2, 3)))) = 3

