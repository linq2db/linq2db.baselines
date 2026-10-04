-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST('2010-01-01 10:00:' || RIGHT('0' || CAST([p].[ID] % 1 AS VarChar(2)), 2) || '.000' AS DateTime) < '2010-01-01 10:00:00.500'

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST('2010-01-01 10:00:' || RIGHT('0' || CAST([p].[ID] % 1 AS VarChar(2)), 2) || '.000' AS DateTime) >= '2010-01-01 10:00:00.500'

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST('2010-01-01 10:00:' || RIGHT('0' || CAST([p].[ID] % 1 AS VarChar(2)), 2) || '.000' AS DateTime) = '2010-01-01 10:00:00.500'

