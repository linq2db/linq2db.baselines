-- SqlServer.2008.MS SqlServer.2008
DECLARE @CoarseMidnight Date
SET     @CoarseMidnight = CAST('2026-06-01T00:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[ConvertedDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (@CoarseMidnight)

