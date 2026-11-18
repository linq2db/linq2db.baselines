-- DB2 DB2.LUW DB2LUW
DECLARE @item Integer(4) -- Int32
SET     @item = 10
DECLARE @item_1 Integer(4) -- Int32
SET     @item_1 = 20
DECLARE @item_2 Integer(4) -- Int32
SET     @item_2 = 30

SELECT
	"t1"."item"
FROM
	(VALUES
		(CAST(@item AS Int)), (CAST(@item_1 AS Int)),
		(CAST(@item_2 AS Int))
	) "t1"("item")

