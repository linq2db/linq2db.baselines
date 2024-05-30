﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	0,
	"t1"."ParentID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT
				"a_Children"."ParentID",
				"a_Children"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "a_Children"."ParentID" ORDER BY "a_Children"."ParentID") as "rn"
			FROM
				"Child" "a_Children"
		) "t1" ON "p"."ParentID" = "t1"."ParentID" AND "t1"."rn" <= 1
WHERE
	"p"."ParentID" = 1
UNION ALL
SELECT
	1,
	NULL,
	NULL,
	NULL
FROM
	"Parent" "p_1"
WHERE
	"p_1"."ParentID" <> 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

