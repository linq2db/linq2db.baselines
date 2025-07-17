BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 0

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

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 200

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 300

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
DECLARE @lastId Int -- Int32
SET     @lastId = 3

SELECT
	"t1"."ID",
	"t1"."intDataType"
FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" > ?
ORDER BY
	"t1"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."ID" >= ?

