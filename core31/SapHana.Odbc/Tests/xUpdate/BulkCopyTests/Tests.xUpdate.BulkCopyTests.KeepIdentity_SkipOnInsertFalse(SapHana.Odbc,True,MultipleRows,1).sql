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
DECLARE @lastId  -- Int32
SET     @lastId = 528

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" >= ?

