-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END
FROM
	[CoarseDayPairRow] [r]
UNION ALL
SELECT
	CDate(#2026-06-01 10:00:00#)
FROM
	[CoarseDayPairRow] [r_1]

