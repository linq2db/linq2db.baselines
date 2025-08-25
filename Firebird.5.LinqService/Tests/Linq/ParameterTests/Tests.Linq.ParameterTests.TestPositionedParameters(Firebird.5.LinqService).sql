BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @x3 Integer -- Int32
SET     @x3 = 3

SELECT
	((((CAST(@x3 AS Int) * (CAST(@y10 AS Int) - CAST(@z2 AS Int)) / CAST(@x3 AS Int)) * CAST(@z2 AS Int)) * (((((CAST(@x3 AS Int) * (CAST(@y10 AS Int) - CAST(@z2 AS Int)) / CAST(@x3 AS Int)) * CAST(@z2 AS Int)) * (CAST(@y10 AS Int) - CAST(@z2 AS Int)) / ((CAST(@x3 AS Int) * (CAST(@y10 AS Int) - CAST(@z2 AS Int)) / CAST(@x3 AS Int)) * CAST(@z2 AS Int))) * CAST(@z2 AS Int)) - "child_1"."ChildID") / ((CAST(@x3 AS Int) * (CAST(@y10 AS Int) - CAST(@z2 AS Int)) / CAST(@x3 AS Int)) * CAST(@z2 AS Int))) * "child_1"."ChildID")
FROM
	"Child" "child_1"

