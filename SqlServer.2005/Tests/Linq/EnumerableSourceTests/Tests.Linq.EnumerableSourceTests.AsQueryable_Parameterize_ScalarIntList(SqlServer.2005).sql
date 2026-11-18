-- SqlServer.2005
DECLARE @item Int -- Int32
SET     @item = 10
DECLARE @item_1 Int -- Int32
SET     @item_1 = 20
DECLARE @item_2 Int -- Int32
SET     @item_2 = 30

SELECT
	[t1].[item]
FROM
	(
		SELECT @item AS [item]
		UNION ALL
		SELECT @item_1
		UNION ALL
		SELECT @item_2) [t1]

