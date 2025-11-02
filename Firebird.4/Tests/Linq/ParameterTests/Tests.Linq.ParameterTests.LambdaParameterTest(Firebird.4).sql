-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"r"."ParentID",
	"r"."Value1"
FROM
	"Parent" "r"
WHERE
	"r"."ParentID" = @p

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

