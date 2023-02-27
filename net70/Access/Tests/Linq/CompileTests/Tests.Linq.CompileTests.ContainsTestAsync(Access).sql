BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p_1

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @p_1 Integer -- Int32
SET     @p_1 = -1

SELECT
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p_1

