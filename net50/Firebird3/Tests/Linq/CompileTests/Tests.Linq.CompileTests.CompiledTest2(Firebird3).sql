BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT FIRST @p_1
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT FIRST @p_1
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

