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
	"BigIntValue"
)
VALUES
(
	101,
	11
)

-- SapHana.Native SapHana
UPDATE
	"LinqDataTypes" "r"
SET
	"BigIntValue" = 12
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" = 11

-- SapHana.Native SapHana
SELECT
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" = 12
LIMIT 1

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < :"p"

