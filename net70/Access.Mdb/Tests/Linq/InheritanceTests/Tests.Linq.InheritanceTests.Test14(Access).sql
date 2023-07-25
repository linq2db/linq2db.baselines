BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 10

SELECT TOP 1
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] = @id

