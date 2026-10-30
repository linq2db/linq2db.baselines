-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < :"p"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
UPDATE
	"LinqDataTypes" "r"
SET
	"IntValue" = 4
WHERE
	"r"."ID" = 101 AND "r"."IntValue" = 3

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."IntValue" = 4

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < :"p"

