-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NOT NULL AND [p].[Value1] > 1
	)

