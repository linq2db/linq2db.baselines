-- SapHana.Native SapHana
INSERT INTO "Table2"
(
	"ID"
)
SELECT
	"t"."ID"
FROM
	"Table1" "t"

-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."Date"
FROM
	"Table2" "t1"

