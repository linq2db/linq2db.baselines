-- SqlServer.2008.MS SqlServer.2008
DECLARE @Date DateTime2
SET     @Date = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)
DECLARE @dateTo DateTime2
SET     @dateTo = CAST('2020-03-10T00:00:00.0000000' AS DATETIME2)

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
	CAST(RIGHT(N'0' + CAST([r].[Date_Year] AS VarChar(4)), 4) + N'-01-01' AS DateTime2),
	CAST(RIGHT(N'0' + CAST([r].[Date_Year] AS VarChar(4)), 4) + N'-' + RIGHT(N'0' + CAST([r].[Date_Month] AS VarChar(2)), 2) + N'-01' AS DateTime2)
FROM
	[x] [r]

