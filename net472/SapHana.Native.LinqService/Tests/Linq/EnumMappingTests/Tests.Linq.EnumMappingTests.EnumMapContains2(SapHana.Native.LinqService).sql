﻿BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < :"Id"

BeforeExecute
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

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" IN (12)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < :"Id"

