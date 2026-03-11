-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Taxonomy]
FROM
	(
		SELECT DISTINCT
			[s].[PersonID]
		FROM
			[Doctor] [s]
	) [s_2]
		CROSS APPLY (
			SELECT TOP (1)
				[s_1].[Taxonomy]
			FROM
				[Doctor] [s_1]
			WHERE
				[s_2].[PersonID] = [s_1].[PersonID]
		) [t1]

