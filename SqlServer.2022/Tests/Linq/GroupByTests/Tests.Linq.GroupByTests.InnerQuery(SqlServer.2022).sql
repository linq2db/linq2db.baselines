-- SqlServer.2022
SELECT
	(
		SELECT TOP (1)
			[s_2].[Taxonomy]
		FROM
			[Doctor] [s_2]
		WHERE
			[s_1].[Key_1] = [s_2].[PersonID]
	)
FROM
	(
		SELECT DISTINCT
			[s].[PersonID] as [Key_1]
		FROM
			[Doctor] [s]
	) [s_1]

