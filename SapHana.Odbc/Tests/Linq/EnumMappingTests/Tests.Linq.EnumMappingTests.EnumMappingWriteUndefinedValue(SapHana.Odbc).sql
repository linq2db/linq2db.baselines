-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	101,
	5
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

