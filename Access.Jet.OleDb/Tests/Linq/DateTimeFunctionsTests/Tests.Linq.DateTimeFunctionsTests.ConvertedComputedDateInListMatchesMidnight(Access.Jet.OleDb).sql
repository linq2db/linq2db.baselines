-- Access.Jet.OleDb AccessOleDb
DECLARE @CoarseMidnight DBDate -- Date
SET     @CoarseMidnight = #2026-06-01#

SELECT
	COUNT(*)
FROM
	[ConvertedDayPairRow] [r]
WHERE
	IIF([r].[ClosedOn] IS NULL, [r].[OpenedOn], [r].[ClosedOn]) IN (@CoarseMidnight)

