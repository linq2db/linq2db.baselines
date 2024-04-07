BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

