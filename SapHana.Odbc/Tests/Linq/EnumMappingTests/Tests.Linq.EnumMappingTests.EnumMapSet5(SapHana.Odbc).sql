BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
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
	11
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TestField  -- Int64
SET     @TestField = 12

UPDATE
	"LinqDataTypes" "r"
SET
	"BigIntValue" = ?
WHERE
	"r"."ID" = 101 AND
	"r"."ID" IS NOT NULL AND
	"r"."BigIntValue" = 11 AND
	"r"."BigIntValue" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" = 12
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

