BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

