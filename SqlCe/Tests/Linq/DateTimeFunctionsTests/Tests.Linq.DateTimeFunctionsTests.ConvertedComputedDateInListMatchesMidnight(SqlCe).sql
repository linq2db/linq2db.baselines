-- SqlCe
DECLARE @CoarseMidnight DateTime
SET     @CoarseMidnight = '2026-06-01 00:00:00.000'

SELECT
	COUNT(*)
FROM
	[ConvertedDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (@CoarseMidnight)

