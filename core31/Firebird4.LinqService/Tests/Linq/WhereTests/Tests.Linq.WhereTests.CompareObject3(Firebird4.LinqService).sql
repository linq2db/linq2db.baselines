﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 21

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	("ch"."ParentID" <> @ParentID OR "ch"."ChildID" <> @ChildID)

