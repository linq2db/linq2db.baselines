BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT MAX("ID") FROM "AllTypes"

BeforeExecute
INSERT ASYNC BULK "AllTypes"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @lastId  -- Int32
SET     @lastId = 12591

SELECT
	"_"."ID",
	"_"."intDataType"
FROM
	"AllTypes" "_"
WHERE
	"_"."ID" > :"lastId"
ORDER BY
	"_"."ID"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @lastId  -- Int32
SET     @lastId = 12591

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" >= :"lastId"

