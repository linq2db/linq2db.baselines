-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CASE
		WHEN [r].[ClosedOn] IS NULL THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END IN ([r].[OpenedOn])

