﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT FIRST @p
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT FIRST @p
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

