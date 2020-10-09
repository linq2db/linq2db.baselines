BeforeExecute
-- Access AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 11
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 11

SELECT 
	Count(*) > 0
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
WHERE
	([a_Parent].[ParentID] = @ParentID AND [a_Parent].[Value1] = @Value1)

