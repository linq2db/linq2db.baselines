﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

