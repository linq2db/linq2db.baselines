-- SqlServer.2005
DECLARE @item Int -- Int32
SET     @item = 1
DECLARE @item_1 Int -- Int32
SET     @item_1 = 2
DECLARE @item_2 Int -- Int32
SET     @item_2 = 3
DECLARE @item_3 Int -- Int32
SET     @item_3 = 4
DECLARE @item_4 Int -- Int32
SET     @item_4 = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT @item AS [item]
		UNION ALL
		SELECT @item_1
		UNION ALL
		SELECT @item_2
		UNION ALL
		SELECT @item_3
		UNION ALL
		SELECT @item_4) [t1]

