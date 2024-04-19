BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Taxonomy]
FROM
	(
		SELECT
			[s].[PersonID]
		FROM
			[Doctor] [s]
		GROUP BY
			[s].[PersonID]
	) [s_2]
		CROSS APPLY (
			SELECT TOP (1)
				[s_1].[Taxonomy]
			FROM
				[Doctor] [s_1]
			WHERE
				[s_2].[PersonID] = [s_1].[PersonID]
		) [t1]

