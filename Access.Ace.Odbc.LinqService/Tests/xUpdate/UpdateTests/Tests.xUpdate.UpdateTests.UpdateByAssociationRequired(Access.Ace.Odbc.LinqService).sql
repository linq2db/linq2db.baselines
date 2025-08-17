BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	(
		SELECT
			[t1].[Id],
			[a_MainRequired].[Id] as [Id_1],
			[a_MainRequired].[Field]
		FROM
			[MainTable] [a_MainRequired],
			[MainTable] [t1]
	) [cross_1]
		INNER JOIN [AssociatedTable] [a_AssociatedRequired] ON ([cross_1].[Id] = [a_AssociatedRequired].[Id])
SET
	[cross_1].[Field] = 'test'
WHERE
	[cross_1].[Id] = ? AND [a_AssociatedRequired].[Id] = [cross_1].[Id_1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

