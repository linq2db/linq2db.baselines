-- SqlCe
DECLARE @item Int -- Int32
SET     @item = 10
DECLARE @item_1 Int -- Int32
SET     @item_1 = 20
DECLARE @item_2 Int -- Int32
SET     @item_2 = 30

SELECT
	[t1].[item] as [item_1]
FROM
	(
		SELECT @item AS [item]
		UNION ALL
		SELECT @item_1 AS [item]
		UNION ALL
		SELECT @item_2 AS [item]) [t1]

