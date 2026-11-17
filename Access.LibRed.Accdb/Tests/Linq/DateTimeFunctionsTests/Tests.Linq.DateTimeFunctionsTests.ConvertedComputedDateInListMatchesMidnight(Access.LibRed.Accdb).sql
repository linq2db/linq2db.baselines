-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @CoarseMidnight  -- Date
SET     @CoarseMidnight = #2026-06-01#

SELECT
	COUNT(*)
FROM
	[ConvertedDayPairRow] [r]
WHERE
	CASE
		WHEN [r].[ClosedOn] IS NULL THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END IN (@CoarseMidnight)

