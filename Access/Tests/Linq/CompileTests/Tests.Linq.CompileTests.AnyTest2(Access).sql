BeforeExecute
-- Access AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- Access AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

