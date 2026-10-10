-- SqlServer.2016
SELECT TOP (2)
	[r].[D]
FROM
	[DateTimeReadBackTable] [r]

-- SqlServer.2016
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 30000, 7)

SELECT
	COUNT(*)
FROM
	[DateTimeReadBackTable] [r]
WHERE
	[r].[D] = @value

-- SqlServer.2016
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 30000, 7)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[DateTimeReadBackTable] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[D]) = @value
	) [t1]

-- SqlServer.2016
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 30000, 7)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[DateTimeReadBackTable] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MIN([g_1].[D]) = @value
	) [t1]

-- SqlServer.2016
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 30000, 7)

SELECT
	COUNT(*)
FROM
	[DateTimeReadBackTable] [r]
WHERE
	Coalesce([r].[ND], [r].[D]) = @value

