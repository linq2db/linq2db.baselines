BeforeExecute
-- SqlServer.2014

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET 2 ROWS
	) [t2]

