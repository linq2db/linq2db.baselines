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
-- SapHana.Native SapHana
DECLARE @lastId  -- Int32
SET     @lastId = 12539

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" >= :"lastId"

