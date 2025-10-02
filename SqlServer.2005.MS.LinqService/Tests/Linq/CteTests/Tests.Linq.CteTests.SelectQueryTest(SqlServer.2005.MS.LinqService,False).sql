BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @Date DateTime
SET     @Date = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @dateTo DateTime
SET     @dateTo = CAST('2020-03-10T00:00:00.000' AS DATETIME)

WITH [x] ([Counter], [Date_1])
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(@Date AS DateTime)
	UNION ALL
	SELECT
		[t1].[Counter] + 1,
		DateAdd(day, 1, [t1].[Date_1])
	FROM
		[x] [t1]
	WHERE
		DateAdd(day, 1, [t1].[Date_1]) < @dateTo
)
SELECT
	[t2].[Counter],
	[t2].[Date_1]
FROM
	[x] [t2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @Date DateTime
SET     @Date = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @dateTo DateTime
SET     @dateTo = CAST('2020-03-10T00:00:00.000' AS DATETIME)

WITH [x] ([Counter], [Date_1])
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(@Date AS DateTime)
	UNION ALL
	SELECT
		[t1].[Counter] + 1,
		DateAdd(day, 1, [t1].[Date_1])
	FROM
		[x] [t1]
	WHERE
		DateAdd(day, 1, [t1].[Date_1]) < @dateTo
)
SELECT
	[t2].[Counter],
	[t2].[Date_1]
FROM
	[x] [t2]

