BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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

