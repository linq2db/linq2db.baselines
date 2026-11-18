-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @item Int32
SET     @item = 10
DECLARE @item_1 Int32
SET     @item_1 = 20
DECLARE @item_2 Int32
SET     @item_2 = 30

SELECT
	`t1`.`item`
FROM
	(
		SELECT @item AS `item`
		UNION ALL
		SELECT @item_1
		UNION ALL
		SELECT @item_2) `t1`

