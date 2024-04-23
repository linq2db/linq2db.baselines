BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '5090430c-3f33-480e-91fe-82d441c6b878'

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

