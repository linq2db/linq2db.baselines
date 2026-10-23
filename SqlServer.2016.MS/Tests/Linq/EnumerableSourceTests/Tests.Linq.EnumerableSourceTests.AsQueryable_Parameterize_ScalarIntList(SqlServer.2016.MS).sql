-- SqlServer.2016.MS SqlServer.2016
DECLARE @item Int -- Int32
SET     @item = 10
DECLARE @item_1 Int -- Int32
SET     @item_1 = 20
DECLARE @item_2 Int -- Int32
SET     @item_2 = 30

SELECT
	[t1].[item]
FROM
	(VALUES
		(@item), (@item_1), (@item_2)
	) [t1]([item])

