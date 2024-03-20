BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	(
		SELECT TOP (5)
			*
		FROM
			[Child] [t1]
	) [t2]

