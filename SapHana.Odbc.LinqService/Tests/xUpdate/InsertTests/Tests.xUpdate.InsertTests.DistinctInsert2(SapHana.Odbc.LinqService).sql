BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '8ea48a1e-b497-444a-a82f-a5264405622e'
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1

INSERT INTO "LinqDataTypes"
(
	"ID",
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST("t1"."c1" + 1001 AS Integer),
	?,
	?
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

