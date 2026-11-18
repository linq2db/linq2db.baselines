-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	EXISTS(
		SELECT TOP @take
			[item_1].[Value]
		FROM
			[TakeSkipClass] [item_1]
		GROUP BY
			[item_1].[Value]
		HAVING
			COUNT(*) > 1
	)

