-- Access.Ace.OleDb AccessOleDb
SELECT
	IIF([r].[Id] > 0, [r].[OpenedOn], [r].[ClosedOn])
FROM
	[CoarseDayPairRow] [r]
UNION ALL
SELECT
	CDate(#2026-06-01 10:00:00#)
FROM
	[CoarseDayPairRow] [r_1]

