BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @p

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @p

