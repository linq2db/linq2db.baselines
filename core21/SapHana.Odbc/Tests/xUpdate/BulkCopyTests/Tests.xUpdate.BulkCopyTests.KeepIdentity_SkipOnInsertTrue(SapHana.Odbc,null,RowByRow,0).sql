BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT MAX("ID") FROM "AllTypes"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value_1  -- Int32
SET     @Value_1 = 200

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value_1  -- Int32
SET     @Value_1 = 300

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @lastId  -- Int32
SET     @lastId = 578

SELECT
	"_"."ID",
	"_"."intDataType"
FROM
	"AllTypes" "_"
WHERE
	"_"."ID" > ?
ORDER BY
	"_"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @lastId  -- Int32
SET     @lastId = 578

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" >= ?

