-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	IIF([r].[ClosedOn] IS NULL, [r].[OpenedOn], [r].[ClosedOn]) IN ([r].[OpenedOn])

