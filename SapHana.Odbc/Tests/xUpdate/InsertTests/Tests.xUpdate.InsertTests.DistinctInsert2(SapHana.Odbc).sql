BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '4e3e3159-35cb-4515-ac6f-1d7e5d264475'

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

