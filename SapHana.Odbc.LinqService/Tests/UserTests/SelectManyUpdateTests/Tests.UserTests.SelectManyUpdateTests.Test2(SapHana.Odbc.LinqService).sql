﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ChildID  -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = ?
WHERE
	1 = 0

