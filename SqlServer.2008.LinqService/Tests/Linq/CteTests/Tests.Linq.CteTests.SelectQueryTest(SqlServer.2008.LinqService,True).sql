BeforeExecute
-- SqlServer.2008 (asynchronously)

WITH [x] ([Counter], [Date_1])
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(CAST('2020-02-29T00:00:00.0000000' AS DATETIME2) AS DateTime2)
	UNION ALL
	SELECT
		[t1].[Counter] + 1,
		DateAdd(day, 1, [t1].[Date_1])
	FROM
		[x] [t1]
	WHERE
		DateAdd(day, 1, [t1].[Date_1]) < CAST('2020-03-10T00:00:00.0000000' AS DATETIME2)
)
SELECT
	[t2].[Counter],
	[t2].[Date_1]
FROM
	[x] [t2]

BeforeExecute
-- SqlServer.2008 (asynchronously)

WITH [x] ([Counter], [Date_1])
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(CAST('2020-02-29T00:00:00.0000000' AS DATETIME2) AS DateTime2)
	UNION ALL
	SELECT
		[t1].[Counter] + 1,
		DateAdd(day, 1, [t1].[Date_1])
	FROM
		[x] [t1]
	WHERE
		DateAdd(day, 1, [t1].[Date_1]) < CAST('2020-03-10T00:00:00.0000000' AS DATETIME2)
)
SELECT
	[t2].[Counter],
	[t2].[Date_1]
FROM
	[x] [t2]

