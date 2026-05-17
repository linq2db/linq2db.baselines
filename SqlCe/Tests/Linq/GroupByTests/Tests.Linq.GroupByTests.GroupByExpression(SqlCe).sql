-- SqlCe
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN([gr].[ParentID]), @defValue) as [Min_1]
FROM
	[Parent] [gr]

