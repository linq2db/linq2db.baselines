﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int -- Int32
SET     @ParentID = 10000

UPDATE
	"GrandChild" "t1"
SET
	"GrandChildID" = ?
WHERE
	"t1"."ParentID" = ? AND "t1"."ChildID" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int -- Int32
SET     @ParentID = 10000
DECLARE @ChildID Int -- Int32
SET     @ChildID = 111

UPDATE
	"GrandChild" "t1"
SET
	"GrandChildID" = ?
WHERE
	"t1"."ParentID" = ? AND "t1"."ChildID" = ?

