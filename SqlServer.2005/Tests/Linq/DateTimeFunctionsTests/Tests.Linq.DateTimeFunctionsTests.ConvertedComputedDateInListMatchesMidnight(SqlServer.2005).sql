-- SqlServer.2005
DECLARE @CoarseMidnight DateTime
SET     @CoarseMidnight = CAST('2026-06-01T00:00:00.000' AS DATETIME)

SELECT
	COUNT(*)
FROM
	[ConvertedDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (@CoarseMidnight)

