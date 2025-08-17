BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN([gr].[ParentID]), @defValue)
FROM
	[Parent] [gr]

