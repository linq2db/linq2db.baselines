BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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

