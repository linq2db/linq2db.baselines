﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"m_1"."ParentID",
	"d_1"."ParentID",
	"d_1"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "m_1"
		INNER JOIN (
			SELECT DISTINCT
				"d"."ParentID",
				"d"."ChildID"
			FROM
				"Child" "d"
			WHERE
				"d"."ParentID" > 0
		) "d_1" ON "m_1"."ParentID" = "d_1"."ParentID"
ORDER BY
	"d_1"."ChildID"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

