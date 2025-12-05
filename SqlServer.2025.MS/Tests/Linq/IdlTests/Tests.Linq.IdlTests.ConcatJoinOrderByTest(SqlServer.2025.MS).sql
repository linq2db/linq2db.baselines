-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[person_1].[PersonID],
	[t1].[PersonID]
FROM
	(
		SELECT
			[y].[PersonID]
		FROM
			[Patient] [y]
		WHERE
			[y].[Diagnosis] = N'a'
		UNION ALL
		SELECT
			[pat].[PersonID]
		FROM
			[Patient] [pat]
		WHERE
			[pat].[Diagnosis] = N'b'
	) [t1]
		INNER JOIN [Person] [person_1] ON [t1].[PersonID] = [person_1].[PersonID]
ORDER BY
	[person_1].[PersonID]

