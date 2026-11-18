-- SqlServer.Contained SqlServer.2025
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
	[t2].[D] = DATETIMEFROMPARTS(2026, 6, 1, 10, 0, 0, 3)

-- SqlServer.Contained SqlServer.2025
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
	[t2].[D] IN (DATETIMEFROMPARTS(2026, 6, 1, 10, 0, 0, 3))

-- SqlServer.Contained SqlServer.2025
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
	[t2].[D] IN (DATETIMEFROMPARTS(2026, 6, 1, 10, 0, 0, 3))

