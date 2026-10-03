-- SqlCe
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [t1]

-- SqlCe
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST('2010-01-01 10:00:' + REPLICATE('0', 2 - LEN(CAST([p].[ID] % 1 AS NVarChar(2)))) + CAST([p].[ID] % 1 AS NVarChar(2)) + '.000' AS DateTime) < '2010-01-01 10:00:00.500'

-- SqlCe
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST('2010-01-01 10:00:' + REPLICATE('0', 2 - LEN(CAST([p].[ID] % 1 AS NVarChar(2)))) + CAST([p].[ID] % 1 AS NVarChar(2)) + '.000' AS DateTime) >= '2010-01-01 10:00:00.500'

-- SqlCe
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST('2010-01-01 10:00:' + REPLICATE('0', 2 - LEN(CAST([p].[ID] % 1 AS NVarChar(2)))) + CAST([p].[ID] % 1 AS NVarChar(2)) + '.000' AS DateTime) = '2010-01-01 10:00:00.500'

