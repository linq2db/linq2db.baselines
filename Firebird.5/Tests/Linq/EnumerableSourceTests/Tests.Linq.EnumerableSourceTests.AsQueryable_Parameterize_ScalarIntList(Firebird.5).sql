-- Firebird.5 Firebird4
DECLARE @item Integer -- Int32
SET     @item = 10
DECLARE @item_1 Integer -- Int32
SET     @item_1 = 20
DECLARE @item_2 Integer -- Int32
SET     @item_2 = 30

SELECT
	"t1"."item"
FROM
	(
		SELECT CAST(@item AS Int) AS "item" FROM rdb$database
		UNION ALL
		SELECT CAST(@item_1 AS Int) FROM rdb$database
		UNION ALL
		SELECT CAST(@item_2 AS Int) FROM rdb$database) "t1"

