-- SapHana.Odbc SapHanaOdbc
DECLARE @item Int -- Int32
SET     @item = 10
DECLARE @item Int -- Int32
SET     @item = 20
DECLARE @item Int -- Int32
SET     @item = 30

SELECT
	"t1"."item"
FROM
	(
		SELECT ? AS "item" FROM DUMMY
		UNION ALL
		SELECT ? FROM DUMMY
		UNION ALL
		SELECT ? FROM DUMMY) "t1"

