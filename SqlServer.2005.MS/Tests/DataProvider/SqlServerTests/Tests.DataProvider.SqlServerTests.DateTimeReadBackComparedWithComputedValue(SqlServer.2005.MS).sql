-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[r].[D]
FROM
	[DateTimeReadBackTable] [r]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T10:00:00.003' AS DATETIME)

SELECT
	COUNT(*)
FROM
	[DateTimeReadBackTable] [r]
WHERE
	[r].[D] = @value

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T10:00:00.003' AS DATETIME)

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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T10:00:00.003' AS DATETIME)

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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T10:00:00.003' AS DATETIME)

SELECT
	COUNT(*)
FROM
	[DateTimeReadBackTable] [r]
WHERE
	Coalesce([r].[ND], [r].[D]) = @value

