BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID] as [Id_1],
	[d].[ValB] as [LB],
	[d].[ValInt] as [LI]
FROM
	[Issue3757Level1] [m_1]
		INNER JOIN [Issue3757Level2] [d] ON [m_1].[ID] = [d].[ParentId]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[l1].[ID],
	[l1].[ValB],
	[l1].[ValS],
	[l1].[ValInt]
FROM
	[Issue3757Level1] [l1]

