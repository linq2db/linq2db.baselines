-- Access.Ace.OleDb AccessOleDb
SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID] as [Id_1],
	[d].[ValB],
	[d].[ValInt]
FROM
	[ODataLevel1Entity] [m_1]
		INNER JOIN [ODataLevel2Entity] [d] ON ([m_1].[ID] = [d].[ParentId])

-- Access.Ace.OleDb AccessOleDb
SELECT
	[l1].[ID],
	[l1].[ValB],
	[l1].[ValS],
	[l1].[ValInt]
FROM
	[ODataLevel1Entity] [l1]

