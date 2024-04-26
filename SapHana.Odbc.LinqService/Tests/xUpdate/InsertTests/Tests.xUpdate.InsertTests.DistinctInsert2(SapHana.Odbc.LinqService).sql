BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'f7f85710-dba2-41a8-bdad-ef94f9b82a99'
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

