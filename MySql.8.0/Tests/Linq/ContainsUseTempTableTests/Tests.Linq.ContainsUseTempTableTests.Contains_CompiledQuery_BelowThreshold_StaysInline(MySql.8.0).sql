-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @item Int32
SET     @item = 1
DECLARE @item_1 Int32
SET     @item_1 = 2
DECLARE @item_2 Int32
SET     @item_2 = 3
DECLARE @item_3 Int32
SET     @item_3 = 4
DECLARE @item_4 Int32
SET     @item_4 = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT @item AS `item`
		UNION ALL
		SELECT @item_1
		UNION ALL
		SELECT @item_2
		UNION ALL
		SELECT @item_3
		UNION ALL
		SELECT @item_4) `t1`

