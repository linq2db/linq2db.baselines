BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	101,
	12
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"entity"."ID",
	"entity"."BigIntValue"
FROM
	"LinqDataTypes" "entity"
WHERE
	"entity"."BigIntValue" = 12

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

