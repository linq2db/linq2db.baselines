-- Firebird.5 Firebird4
WITH RECURSIVE "cte" ("Level_1", "ParentID", "ChildID")
AS
(
	SELECT
		CAST(0 AS Int),
		"p"."ParentID",
		NULL
	FROM
		"Parent" "p"
	UNION ALL
	SELECT
		"ct"."Level_1" + 1,
		"c_1"."ParentID",
		"c_1"."ChildID"
	FROM
		"Child" "c_1"
			INNER JOIN "cte" "ct" ON "ct"."ParentID" = "c_1"."ParentID"
	WHERE
		"ct"."Level_1" < 2
)
SELECT
	"h"."ParentID",
	"h"."ChildID",
	"h"."Level_1",
	"p_1"."Value1"
FROM
	"cte" "h"
		INNER JOIN "Parent" "p_1" ON "p_1"."ParentID" = "h"."ChildID"

