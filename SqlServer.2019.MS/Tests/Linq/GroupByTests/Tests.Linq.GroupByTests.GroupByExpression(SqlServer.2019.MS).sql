-- SqlServer.2019.MS SqlServer.2019
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN([gr].[ParentID]), @defValue)
FROM
	[Parent] [gr]

