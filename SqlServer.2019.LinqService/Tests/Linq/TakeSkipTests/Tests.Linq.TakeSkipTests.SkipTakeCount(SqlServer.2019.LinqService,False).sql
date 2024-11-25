BeforeExecute
-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 
	) [t2]

