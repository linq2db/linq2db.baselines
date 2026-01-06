-- Firebird.2.5 Firebird

SELECT
	"t1"."cond"
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
			) as "cond"
		FROM
			"Parent" "p"
	) "t1"
WHERE
	"t1"."cond" IS NOT NULL

