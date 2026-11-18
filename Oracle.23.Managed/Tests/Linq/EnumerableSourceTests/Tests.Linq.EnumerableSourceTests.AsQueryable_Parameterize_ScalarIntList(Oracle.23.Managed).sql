-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @item Int32
SET     @item = 10
DECLARE @item_1 Int32
SET     @item_1 = 20
DECLARE @item_2 Int32
SET     @item_2 = 30

SELECT
	t1."item"
FROM
	(
		SELECT :item AS "item" FROM sys.dual
		UNION ALL
		SELECT :item_1 FROM sys.dual
		UNION ALL
		SELECT :item_2 FROM sys.dual) t1

