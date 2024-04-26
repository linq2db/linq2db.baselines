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
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '35fbc2c7-29af-4442-86f4-0258b82b37ef'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST("t2"."c1" + 1001 AS Integer),
	?,
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST("t1"."ID" AS Double) / 3) as "c1"
		FROM
			"LinqDataTypes" "t1"
	) "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1"."ID" > 1000

