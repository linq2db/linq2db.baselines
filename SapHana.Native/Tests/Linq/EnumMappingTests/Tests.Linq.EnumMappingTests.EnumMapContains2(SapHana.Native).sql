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
	12
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" IN (12)

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < :"p"

