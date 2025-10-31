-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[MainTable] [a_MainOptional],
	[AssociatedTable] [p]
SET
	[a_MainOptional].[Field] = 'test'
WHERE
	[p].[Id] = ? AND [p].[Id] = [a_MainOptional].[Id]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

