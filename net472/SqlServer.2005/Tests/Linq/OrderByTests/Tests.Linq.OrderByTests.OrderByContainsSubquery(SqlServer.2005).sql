BeforeExecute
-- SqlServer.2005

SELECT
	[_].[PersonID],
	[_].[LastName],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT 1 AS [item]
					UNION ALL
					SELECT 3) [t1]
			WHERE
				[t1].[item] = [_].[PersonID]
		)
			THEN 1
		ELSE 0
	END
FROM
	[Person] [_]
ORDER BY
	CASE
		WHEN [_].[PersonID] IN (1, 3)
			THEN 1
		ELSE 0
	END

