-- SqlServer.Contained.MS SqlServer.2019
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN ([r].[OpenedOn])

