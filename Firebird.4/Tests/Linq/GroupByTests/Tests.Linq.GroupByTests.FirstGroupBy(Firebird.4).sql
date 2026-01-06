-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	(
		SELECT
			"gr"."ParentID" as "Key_1"
		FROM
			"Child" "gr"
		GROUP BY
			"gr"."ParentID"
	) "gr_1"
		CROSS JOIN LATERAL (
			SELECT
				"t"."ParentID",
				"t"."ChildID"
			FROM
				"Child" "t"
			WHERE
				"gr_1"."Key_1" = "t"."ParentID"
			ORDER BY
				"t"."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) "t1"

