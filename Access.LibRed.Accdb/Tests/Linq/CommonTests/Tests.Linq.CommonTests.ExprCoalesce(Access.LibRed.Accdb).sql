-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	IIF([p].[Value1] IS NULL, 100, [p].[Value1]) + 50
FROM
	[Parent] [p]

