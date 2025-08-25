BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(0 AS Int),
	"t1"."ParentID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	(
		SELECT
			(
				SELECT FIRST 1
					"a_Children"."ParentID"
				FROM
					"Child" "a_Children"
				WHERE
					"p"."ParentID" = "a_Children"."ParentID"
			) as "ParentID",
			(
				SELECT FIRST 1
					"a_Children_1"."ChildID"
				FROM
					"Child" "a_Children_1"
				WHERE
					"p"."ParentID" = "a_Children_1"."ParentID"
			) as "ChildID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1
	) "t1"
UNION ALL
SELECT
	CAST(1 AS Int),
	NULL,
	NULL,
	NULL
FROM
	"Parent" "p_1"
WHERE
	"p_1"."ParentID" <> 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

