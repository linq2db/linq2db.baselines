BeforeExecute
-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (5)
			*
		FROM
			[Child] [t1]
	) [t2]

