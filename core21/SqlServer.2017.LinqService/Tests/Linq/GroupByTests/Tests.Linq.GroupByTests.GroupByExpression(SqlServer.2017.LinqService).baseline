BeforeExecute
-- SqlServer.2017
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	IIF(Min([t1].[ParentID]) IS NULL, @defValue, Min([t1].[ParentID]))
FROM
	[Parent] [t1]

