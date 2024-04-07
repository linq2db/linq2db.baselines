BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "LinqDataTypes"
(
	"ID",
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST("t1"."c1" + 1001 AS Integer),
	SYSUUID,
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST("_"."ID" AS Double) / 3) as "c1"
		FROM
			"LinqDataTypes" "_"
	) "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1"."ID" > 1000

