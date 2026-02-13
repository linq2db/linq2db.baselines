-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID"
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
			) as "ParentID"
		FROM
			"Parent" "p"
	) "t1"
WHERE
	"t1"."ParentID" IS NOT NULL

