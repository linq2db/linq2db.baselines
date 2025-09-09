BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @parentId Int -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = ?

