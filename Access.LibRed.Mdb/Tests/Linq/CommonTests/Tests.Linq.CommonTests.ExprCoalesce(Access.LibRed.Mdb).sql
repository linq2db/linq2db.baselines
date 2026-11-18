-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [p].[Value1] IS NULL THEN 100
		ELSE [p].[Value1]
	END + 50
FROM
	[Parent] [p]

