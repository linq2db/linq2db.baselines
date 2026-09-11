-- SQLite.Classic SQLite
DECLARE @item  -- Int32
SET     @item = 10
DECLARE @item_1  -- Int32
SET     @item_1 = 20
DECLARE @item_2  -- Int32
SET     @item_2 = 30

SELECT
	[t1].[item]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(@item), (@item_1), (@item_2)
		) [t1]

