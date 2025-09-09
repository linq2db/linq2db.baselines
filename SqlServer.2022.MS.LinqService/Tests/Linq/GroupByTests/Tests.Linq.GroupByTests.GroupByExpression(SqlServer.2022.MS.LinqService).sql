BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN([gr].[ParentID]), @defValue)
FROM
	[Parent] [gr]

