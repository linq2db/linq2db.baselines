﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value6  -- Int32
SET     @Value6 = 7
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value6" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	"t1"."Value6"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value6  -- Int32
SET     @Value6 = 8
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value6" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	"t1"."Value6"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

