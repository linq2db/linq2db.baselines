BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" >= 1000

BeforeExecute
-- SapHana.Native SapHana
DECLARE @tt  -- Int64
SET     @tt = 600000000

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	1001,
	:"tt"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t"."ID",
	"t"."BigIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1001
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" >= 1000

