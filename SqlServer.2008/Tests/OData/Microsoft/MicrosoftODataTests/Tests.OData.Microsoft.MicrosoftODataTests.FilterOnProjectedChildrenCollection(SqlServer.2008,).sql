-- SqlServer.2008
SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID],
	[d].[ValB],
	[d].[ValInt]
FROM
	[ODataLevel1Entity] [m_1]
		INNER JOIN [ODataLevel2Entity] [d] ON [m_1].[ID] = [d].[ParentId]

-- SqlServer.2008
SELECT
	[l1].[ID],
	[l1].[ValB],
	[l1].[ValS],
	[l1].[ValInt]
FROM
	[ODataLevel1Entity] [l1]

