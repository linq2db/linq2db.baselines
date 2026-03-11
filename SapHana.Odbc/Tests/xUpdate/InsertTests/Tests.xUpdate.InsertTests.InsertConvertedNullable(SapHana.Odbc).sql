-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 1000

-- SapHana.Odbc SapHanaOdbc
DECLARE @tt BigInt -- Int64
SET     @tt = 600000000

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	1001,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID",
	"t"."BigIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1001
LIMIT 1

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 1000

