-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(N'2010-01-01 10:00:' + RIGHT(N'0' + CAST([p].[ID] % 1 AS VarChar(2)), 2) + N'.000' AS DateTime) < CAST('2010-01-01T10:00:00.500' AS DATETIME)

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(N'2010-01-01 10:00:' + RIGHT(N'0' + CAST([p].[ID] % 1 AS VarChar(2)), 2) + N'.000' AS DateTime) >= CAST('2010-01-01T10:00:00.500' AS DATETIME)

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(N'2010-01-01 10:00:' + RIGHT(N'0' + CAST([p].[ID] % 1 AS VarChar(2)), 2) + N'.000' AS DateTime) = CAST('2010-01-01T10:00:00.500' AS DATETIME)

