BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t2].[ID],
	[t2].[LastName],
	[t2].[flag]
FROM
	(
		SELECT
			CASE
				WHEN [t1].[PersonID] IN (1, 3) THEN 1
				ELSE 0
			END as [flag],
			[t1].[PersonID] as [ID],
			[t1].[LastName]
		FROM
			[Person] [t1]
	) [t2]
ORDER BY
	[t2].[flag]

