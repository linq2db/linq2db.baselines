-- SqlServer.2014.MS SqlServer.2014
DECLARE @Date DateTime2
SET     @Date = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)
DECLARE @dateTo DateTime2
SET     @dateTo = DATETIME2FROMPARTS(2020, 3, 10, 0, 0, 0, 0, 7)

WITH [x] ([Date_1], [Date_Year], [Date_Month])
AS
(
	SELECT
		CAST(@Date AS DateTime2),
		DatePart(year, @Date),
		DatePart(month, @Date)
	UNION ALL
	SELECT
		DateAdd(day, 1, [t1].[Date_1]),
		DatePart(year, DateAdd(day, 1, [t1].[Date_1])),
		DatePart(month, DateAdd(day, 1, [t1].[Date_1]))
	FROM
		[x] [t1]
	WHERE
		DateAdd(day, 1, [t1].[Date_1]) < @dateTo
)
SELECT
	[r].[Date_1],
	DATETIME2FROMPARTS([r].[Date_Year], 1, 1, 0, 0, 0, 0, 3),
	DATETIME2FROMPARTS([r].[Date_Year], [r].[Date_Month], 1, 0, 0, 0, 0, 3)
FROM
	[x] [r]

