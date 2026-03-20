-- Access.Ace.Odbc AccessODBC

UPDATE
	[ParentTable] [a_Parent],
	[ChildTable] [c_1]
SET
	[a_Parent].[Value] = [a_Parent].[Value] * 10
WHERE
	[a_Parent].[Id] = 2 AND [c_1].[ParentId] = [a_Parent].[Id]

-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[p].[Id],
	[p].[Value]
FROM
	[ParentTable] [p]
WHERE
	[p].[Id] = 2

