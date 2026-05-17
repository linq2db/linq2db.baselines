-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Taxonomy]
FROM
	(
		SELECT DISTINCT
			[s].[PersonID] as [Key_1]
		FROM
			[Doctor] [s]
	) [s_2]
		CROSS APPLY (
			SELECT TOP (1)
				[s_1].[Taxonomy]
			FROM
				[Doctor] [s_1]
			WHERE
				[s_2].[Key_1] = [s_1].[PersonID]
		) [t1]

