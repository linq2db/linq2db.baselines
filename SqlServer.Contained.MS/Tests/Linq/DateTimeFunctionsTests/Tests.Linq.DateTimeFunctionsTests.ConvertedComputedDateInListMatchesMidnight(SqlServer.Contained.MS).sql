-- SqlServer.Contained.MS SqlServer.2019
DECLARE @CoarseMidnight Date
SET     @CoarseMidnight = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[ConvertedDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (@CoarseMidnight)

