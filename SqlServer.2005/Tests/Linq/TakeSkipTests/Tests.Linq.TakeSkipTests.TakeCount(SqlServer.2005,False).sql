BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	(
		SELECT TOP (5)
			*
		FROM
			[Child] [t1]
	) [t2]

