BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Person] [r]
		GROUP BY
			[r].[PersonID],
			[r].[PersonID]
	) [t1]

