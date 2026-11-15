-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [c_1]
		WHERE
			[c_1].[Value1] IS NULL
	)

