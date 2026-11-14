-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	IIF([r].[ClosedOn] IS NULL, [r].[OpenedOn], [r].[ClosedOn]) IN ([r].[OpenedOn])

