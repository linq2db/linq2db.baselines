BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (5)
			1 as [c1]
		FROM
			[Child] [t1]
	) [t2]

