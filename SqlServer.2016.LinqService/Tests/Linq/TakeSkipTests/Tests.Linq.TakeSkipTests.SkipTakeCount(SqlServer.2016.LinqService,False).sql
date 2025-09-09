BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 
	) [t2]

