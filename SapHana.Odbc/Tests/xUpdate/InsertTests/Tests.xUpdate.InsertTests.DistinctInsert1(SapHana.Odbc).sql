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
SET     @GuidValue = '1ca5a271-870f-4b08-810e-1eb2c5bf19d9'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST("t1"."c1" + 1001 AS Integer),
	?,
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

