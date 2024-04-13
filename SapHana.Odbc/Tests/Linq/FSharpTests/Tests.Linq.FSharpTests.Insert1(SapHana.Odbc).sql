﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @ChildID  -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 1001

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

