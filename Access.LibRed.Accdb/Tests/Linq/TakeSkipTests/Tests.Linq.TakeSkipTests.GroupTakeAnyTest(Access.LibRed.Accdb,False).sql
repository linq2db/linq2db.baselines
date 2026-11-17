-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	EXISTS(
		SELECT TOP 1
			[item_1].[Value]
		FROM
			[TakeSkipClass] [item_1]
		GROUP BY
			[item_1].[Value]
		HAVING
			COUNT(*) > 1
	)

