BeforeExecute
-- SqlServer.2019
DECLARE @TypedProperty NVarChar(4000) -- String
SET     @TypedProperty = N'%de%'

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID],
	[d].[ValB],
	[d].[ValInt]
FROM
	(
		SELECT DISTINCT
			[l1].[ID],
			[l1].[ValS]
		FROM
			[Issue3757Level1] [l1]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[Issue3757Level2] [c_1]
				WHERE
					[l1].[ID] = [c_1].[ParentId] AND CASE
						WHEN [l1].[ValS] LIKE @TypedProperty ESCAPE N'~' THEN 1
						WHEN [l1].[ValS] NOT LIKE @TypedProperty ESCAPE N'~' THEN 0
						ELSE NULL
					END = 1 AND
					[l1].[ValS] IS NOT NULL
			)
	) [m_1]
		INNER JOIN [Issue3757Level2] [d] ON [m_1].[ID] = [d].[ParentId]

BeforeExecute
-- SqlServer.2019
DECLARE @TypedProperty NVarChar(4000) -- String
SET     @TypedProperty = N'%de%'

SELECT
	[it].[ID],
	[it].[ValB],
	[it].[ValS],
	[it].[ValInt]
FROM
	[Issue3757Level1] [it]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Issue3757Level2] [c_1]
		WHERE
			[it].[ID] = [c_1].[ParentId] AND CASE
				WHEN [it].[ValS] LIKE @TypedProperty ESCAPE N'~' THEN 1
				WHEN [it].[ValS] NOT LIKE @TypedProperty ESCAPE N'~' THEN 0
				ELSE NULL
			END = 1 AND
			[it].[ValS] IS NOT NULL
	)

