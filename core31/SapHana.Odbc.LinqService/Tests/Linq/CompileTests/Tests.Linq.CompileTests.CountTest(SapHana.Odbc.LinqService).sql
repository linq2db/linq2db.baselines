﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = ?

