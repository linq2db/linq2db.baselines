-- SqlServer.2016
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
	(VALUES
		(@item), (@item_1), (@item_2), (@item_3), (@item_4)
	) [t1]([item])

