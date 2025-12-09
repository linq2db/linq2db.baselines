-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (5)
			*
		FROM
			[Child] [t1]
	) [t2]

