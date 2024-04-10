﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"g_1"."ParentID"
		FROM
			"Child" "g_1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird4 Firebird

SELECT
	"g_1"."ParentID"
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

