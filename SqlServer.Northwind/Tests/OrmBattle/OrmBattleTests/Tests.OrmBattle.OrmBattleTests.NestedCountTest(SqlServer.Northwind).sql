BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[c_2].[CustomerID],
	[c_2].[CompanyName],
	[c_2].[ContactName],
	[c_2].[ContactTitle],
	[c_2].[Address],
	[c_2].[City],
	[c_2].[Region],
	[c_2].[PostalCode],
	[c_2].[Country],
	[c_2].[Phone],
	[c_2].[Fax]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Orders] [o]
						INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
				WHERE
					([a_Customer].[CustomerID] = [c_1].[CustomerID] OR [a_Customer].[CustomerID] IS NULL AND [c_1].[CustomerID] IS NULL)
			) as [ex],
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
	) [c_2]
WHERE
	[c_2].[ex] > 5

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'ALFKI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'ANATR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'ANTON'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'AROUT'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'BERGS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'BLAUS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'BLONP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'BOLID'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'BONAP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'BOTTM'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'BSBEV'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'CACTU'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'CENTC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'CHOPS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'COMMI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'CONSH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'DRACD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'DUMON'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'EASTC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'ERNSH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'FAMIA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'FISSA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'FOLIG'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'FOLKO'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'FRANK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'FRANR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'FRANS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'FURIB'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'GALED'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'GODOS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'GOURL'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'GREAL'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'GROSR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'HANAR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'HILAA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'HUNGC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'HUNGO'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'ISLAT'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'KOENE'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LACOR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LAMAI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LAUGB'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LAZYK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LEHMS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LETSS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LILAS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LINOD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'LONEP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'MAGAA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'MAISD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'MEREP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'MORGK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'NORTS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'OCEAN'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'OLDWO'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'OTTIK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'PARIS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'PERIC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'PICCO'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'PRINI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'QUEDE'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'QUEEN'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'QUICK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'RANCH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'RATTC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'REGGC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'RICAR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'RICSU'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'ROMEY'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'SANTG'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'SAVEA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'SEVES'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'SIMOB'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'SPECD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'SPLIR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'SUPRD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'THEBI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'THECR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'TOMSP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'TORTU'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'TRADH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'TRAIH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'VAFFE'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'VICTE'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'VINET'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'WANDK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'WARTH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'WELLI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'WHITC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'WILMK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @CustomerID NVarChar(4000) -- String
SET     @CustomerID = N'WOLZA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

