﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value3 Int -- Int32
SET     @Value3 = 7
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value3" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"t1"."Value3"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value3 Int -- Int32
SET     @Value3 = 8
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value3" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"t1"."Value3"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

