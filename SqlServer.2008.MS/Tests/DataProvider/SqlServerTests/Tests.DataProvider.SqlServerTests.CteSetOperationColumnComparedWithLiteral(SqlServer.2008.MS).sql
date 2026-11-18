-- SqlServer.2008.MS SqlServer.2008
WITH [CTE_1] ([Id], [D])
AS
(
	SELECT
		[t1].[Id],
		[t1].[D]
	FROM
		[DateTimeReadBackTable] [t1]
),
[CTE_2] ([Id], [D])
AS
(
	SELECT
		[t2].[Id],
		[t2].[D]
	FROM
		[CTE_1] [t2]
	WHERE
		[t2].[Id] = 1
	UNION ALL
	SELECT
		[t3].[Id],
		[t3].[D]
	FROM
		[CTE_1] [t3]
	WHERE
		[t3].[Id] = 2
)
SELECT
	COUNT(*)
FROM
	[CTE_2] [t4]
WHERE
	[t4].[D] = CAST('2026-06-01T10:00:00.003' AS DATETIME)

