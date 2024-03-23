BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	101,
	3
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Int32Field  -- Int32
SET     @Int32Field = 4

UPDATE
	"LinqDataTypes" "r"
SET
	"IntValue" = ?
WHERE
	"r"."ID" = 101 AND "r"."IntValue" = 3

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."IntValue" = 4

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

