BeforeExecute
-- SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	IIF([q].[ParentID] IS NOT NULL, [q].[ParentID], @p)
FROM
	[Parent] [q]

