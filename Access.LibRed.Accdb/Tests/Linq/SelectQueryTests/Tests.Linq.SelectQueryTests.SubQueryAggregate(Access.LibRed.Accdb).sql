-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [t1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t2]
	)

