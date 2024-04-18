﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 11

SELECT
	"ch"."GrandChildID"
FROM
	"GrandChild" "ch"
WHERE
	"ch"."ParentID" = @ParentID AND "ch"."ChildID" = @ChildID

