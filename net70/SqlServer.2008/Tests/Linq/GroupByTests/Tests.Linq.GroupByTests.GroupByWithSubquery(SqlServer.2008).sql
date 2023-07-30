BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Person] [_]
		WHERE
			1 = 0
	) [t1]
GROUP BY
	[t1].[c1]

