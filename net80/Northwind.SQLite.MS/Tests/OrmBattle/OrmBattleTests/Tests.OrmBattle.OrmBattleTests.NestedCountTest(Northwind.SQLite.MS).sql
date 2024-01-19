BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[EmployeeID],
	[t1].[LastName],
	[t1].[FirstName],
	[t1].[Title],
	[t1].[TitleOfCourtesy],
	[t1].[BirthDate],
	[t1].[HireDate],
	[t1].[Address],
	[t1].[City],
	[t1].[Region],
	[t1].[PostalCode],
	[t1].[Country],
	[t1].[HomePhone],
	[t1].[Extension],
	[t1].[Photo],
	[t1].[Notes],
	[t1].[ReportsTo],
	[t1].[PhotoPath]
FROM
	[Employees] [t1]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[Discontinued],
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel]
FROM
	[Products] [t1]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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
	(
		SELECT
			Count(*)
		FROM
			[Orders] [t1]
				INNER JOIN [Customers] [a_Customer] ON ([t1].[CustomerID] = [a_Customer].[CustomerID] OR [t1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
		WHERE
			([a_Customer].[CustomerID] = [c_1].[CustomerID] OR [a_Customer].[CustomerID] IS NULL AND [c_1].[CustomerID] IS NULL)
	) > 5

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'ALFKI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'ANATR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'ANTON'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'AROUT'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'BERGS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'BLAUS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'BLONP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'BOLID'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'BONAP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'BOTTM'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'BSBEV'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'CACTU'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'CENTC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'CHOPS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'COMMI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'CONSH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'DRACD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'DUMON'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'EASTC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'ERNSH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'FAMIA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'FISSA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'FOLIG'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'FOLKO'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'FRANK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'FRANR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'FRANS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'FURIB'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'GALED'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'GODOS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'GOURL'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'GREAL'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'GROSR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'HANAR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'HILAA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'HUNGC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'HUNGO'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'ISLAT'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'KOENE'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LACOR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LAMAI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LAUGB'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LAZYK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LEHMS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LETSS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LILAS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LINOD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'LONEP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'MAGAA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'MAISD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'MEREP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'MORGK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'NORTS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'OCEAN'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'OLDWO'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'OTTIK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'PARIS'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'PERIC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'PICCO'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'PRINI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'QUEDE'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'QUEEN'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'QUICK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'RANCH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'RATTC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'REGGC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'RICAR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'RICSU'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'ROMEY'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'SANTG'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'SAVEA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'SEVES'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'SIMOB'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'SPECD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'SPLIR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'SUPRD'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'THEBI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'THECR'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'TOMSP'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'TORTU'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'TRADH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'TRAIH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'VAFFE'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'VICTE'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'VINET'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'WANDK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'WARTH'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'WELLI'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'WHITC'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'WILMK'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @CustomerID NVarChar(5) -- String
SET     @CustomerID = 'WOLZA'

SELECT
	Count(*)
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[a_Customer].[CustomerID] = @CustomerID

