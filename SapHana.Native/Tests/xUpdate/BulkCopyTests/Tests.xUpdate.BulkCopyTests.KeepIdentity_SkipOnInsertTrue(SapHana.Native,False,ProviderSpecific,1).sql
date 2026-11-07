-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	:"Value"
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

INSERT BULK "AllTypes"

-- SapHana.Native SapHana
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

SELECT
	"t1"."ID",
	"t1"."intDataType"
FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" > :"lastId"
ORDER BY
	"t1"."ID"

-- SapHana.Native SapHana
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" >= :"lastId"

