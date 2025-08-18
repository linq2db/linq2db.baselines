BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value5 Int -- Int32
SET     @Value5 = 11
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value5" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"t1"."Value5"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value5 Int -- Int32
SET     @Value5 = 12
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value5" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"t1"."Value5"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

