BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (5)
			1 as [c1]
		FROM
			[Child] [t1]
	) [t2]

