BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @p

