-- SqlServer.2008
WITH [previous] ([Level_1], [D])
AS
(
	SELECT
		CAST(0 AS Int),
		[r].[D]
	FROM
		[DateTimeReadBackTable] [r]
	UNION ALL
	SELECT
		[t1].[Level_1] + 1,
		[t1].[D]
	FROM
		[previous] [t1]
	WHERE
		[t1].[Level_1] < 1
)
SELECT
	COUNT(*)
FROM
	[previous] [t2]
WHERE
	[t2].[D] = CAST('2026-06-01T10:00:00.003' AS DATETIME)

-- SqlServer.2008
WITH [previous] ([Level_1], [D])
AS
(
	SELECT
		CAST(0 AS Int),
		[r].[D]
	FROM
		[DateTimeReadBackTable] [r]
	UNION ALL
	SELECT
		[t1].[Level_1] + 1,
		[t1].[D]
	FROM
		[previous] [t1]
	WHERE
		[t1].[Level_1] < 1
)
SELECT
	COUNT(*)
FROM
	[previous] [t2]
WHERE
	[t2].[D] IN (CAST('2026-06-01T10:00:00.003' AS DATETIME))

-- SqlServer.2008
WITH [previous] ([Level_1], [D])
AS
(
	SELECT
		CAST(0 AS Int),
		[r].[D]
	FROM
		[DateTimeReadBackTable] [r]
	UNION ALL
	SELECT
		[t1].[Level_1] + 1,
		[t1].[D]
	FROM
		[previous] [t1]
	WHERE
		[t1].[Level_1] < 1
)
SELECT
	COUNT(*)
FROM
	[previous] [t2]
WHERE
	[t2].[D] IN (CAST('2026-06-01T10:00:00.003' AS DATETIME))

