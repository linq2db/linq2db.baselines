-- SqlServer.2008
SELECT TOP (2)
	[r].[D]
FROM
	[DateTimeReadBackTable] [r]

-- SqlServer.2008
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T10:00:00.0030000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[DateTimeReadBackTable] [r]
WHERE
	[r].[D] = @value

-- SqlServer.2008
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T10:00:00.0030000' AS DATETIME2)

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

-- SqlServer.2008
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T10:00:00.0030000' AS DATETIME2)

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

-- SqlServer.2008
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T10:00:00.0030000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[DateTimeReadBackTable] [r]
WHERE
	Coalesce([r].[ND], [r].[D]) = @value

