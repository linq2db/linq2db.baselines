﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value2  -- Int32
SET     @Value2 = 11
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value2" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	"t1"."Value2"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value2  -- Int32
SET     @Value2 = 12
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value2" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	"t1"."Value2"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

