BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "t1"."cond" IS NULL THEN 0
		ELSE "t1"."cond"
	END,
	(
		SELECT FIRST 1
			"c_2"."ParentID"
		FROM
			"Child" "c_2"
		WHERE
			"c_2"."ChildID" > -100
		ORDER BY
			"c_2"."ParentID"
	),
	(
		SELECT FIRST 1
			"c_3"."ChildID"
		FROM
			"Child" "c_3"
		WHERE
			"c_3"."ChildID" > -100
		ORDER BY
			"c_3"."ParentID"
	)
FROM
	(
		SELECT
			(
				SELECT FIRST 1
					"c_1"."ParentID"
				FROM
					"Child" "c_1"
				WHERE
					"c_1"."ParentID" > 0
				ORDER BY
					"c_1"."ParentID"
			) as "cond"
		FROM
			"Parent" "p"
	) "t1"

