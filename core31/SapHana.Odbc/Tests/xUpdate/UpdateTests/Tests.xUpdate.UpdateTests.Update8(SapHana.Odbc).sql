﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = 1001

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
DECLARE @Value1  -- Int32
SET     @Value1 = 1002
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

UPDATE
	"Parent"
SET
	"Parent"."Value1" = ?
WHERE
	"Parent"."ParentID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ?
LIMIT ?

