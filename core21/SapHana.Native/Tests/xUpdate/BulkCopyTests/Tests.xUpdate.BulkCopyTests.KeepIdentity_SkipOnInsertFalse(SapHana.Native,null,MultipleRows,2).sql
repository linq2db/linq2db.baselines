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
-- SapHana.Native SapHana (asynchronously)
DECLARE @Value_1  -- Int32
SET     @Value_1 = 200

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @Value_1  -- Int32
SET     @Value_1 = 300

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
DECLARE @lastId  -- Int32
SET     @lastId = 12522

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
SET     @lastId = 12522

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" >= :"lastId"

