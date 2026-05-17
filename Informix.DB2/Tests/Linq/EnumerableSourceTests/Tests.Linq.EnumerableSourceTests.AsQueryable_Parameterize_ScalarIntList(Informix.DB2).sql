-- Informix.DB2 Informix
DECLARE @item Integer(4) -- Int32
SET     @item = 10
DECLARE @item_1 Integer(4) -- Int32
SET     @item_1 = 20
DECLARE @item_2 Integer(4) -- Int32
SET     @item_2 = 30

SELECT
	t1."item"
FROM
	(
		SELECT @item::Int AS "item" FROM table(set{1})
		UNION ALL
		SELECT @item_1::Int FROM table(set{1})
		UNION ALL
		SELECT @item_2::Int FROM table(set{1})) t1

