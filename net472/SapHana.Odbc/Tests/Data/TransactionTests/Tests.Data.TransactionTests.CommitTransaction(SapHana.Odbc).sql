﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1010
DECLARE @Value1  -- Int32
SET     @Value1 = 1010

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"Parent"
SET
	"Parent"."Value1" = 1011
WHERE
	"Parent"."ParentID" = 1010

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 1010
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000

