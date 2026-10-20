-- Sybase.Managed Sybase
DECLARE @CoarseMidnight Date
SET     @CoarseMidnight = '2026-06-01 00:00:00.000'

SELECT
	COUNT(*)
FROM
	[ConvertedDayPairRow] [r]
WHERE
	CAST(Coalesce([r].[ClosedOn], [r].[OpenedOn]) AS DateTime) IN (CAST(@CoarseMidnight AS DateTime))

