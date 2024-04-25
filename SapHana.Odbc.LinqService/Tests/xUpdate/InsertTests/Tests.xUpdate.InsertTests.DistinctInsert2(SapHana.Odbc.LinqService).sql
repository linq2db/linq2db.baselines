BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '2667de44-cf53-42f3-a18c-b0d40d504f58'
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1

INSERT INTO "LinqDataTypes"
(
	"ID",
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST("t2"."c1" + 1001 AS Integer),
	?,
	?
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

