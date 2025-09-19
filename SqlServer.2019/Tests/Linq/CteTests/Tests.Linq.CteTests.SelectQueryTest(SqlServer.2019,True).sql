BeforeExecute
-- SqlServer.2019

WITH [x] ([Counter], [Date_1])
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7) AS DateTime2)
	UNION ALL
	SELECT
		[t1].[Counter] + 1,
		DateAdd(day, 1, [t1].[Date_1])
	FROM
		[x] [t1]
	WHERE
		DateAdd(day, 1, [t1].[Date_1]) < DATETIME2FROMPARTS(2020, 3, 10, 0, 0, 0, 0, 7)
)
SELECT
	[t2].[Counter],
	[t2].[Date_1]
FROM
	[x] [t2]

BeforeExecute
-- SqlServer.2019

WITH [x] ([Counter], [Date_1])
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7) AS DateTime2)
	UNION ALL
	SELECT
		[t1].[Counter] + 1,
		DateAdd(day, 1, [t1].[Date_1])
	FROM
		[x] [t1]
	WHERE
		DateAdd(day, 1, [t1].[Date_1]) < DATETIME2FROMPARTS(2020, 3, 10, 0, 0, 0, 0, 7)
)
SELECT
	[t2].[Counter],
	[t2].[Date_1]
FROM
	[x] [t2]

