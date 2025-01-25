BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	("x"."ParentID" = @ParentID OR "x"."ParentID" = @ParentID)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 2

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	("x"."ParentID" = @ParentID OR "x"."ParentID" = @ParentID_1)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

