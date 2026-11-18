-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Child] [t1]
		OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 
	) [t2]

