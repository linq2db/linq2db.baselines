-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN (
			SELECT FIRST 1
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = "p"."ParentID" AND "c_1"."ChildID" > -100 AND
				"c_1"."ParentID" > 0
			ORDER BY
				"c_1"."ChildID"
		) IS NULL
			THEN 0
		ELSE (
			SELECT FIRST 1
				"c_2"."ParentID"
			FROM
				"Child" "c_2"
			WHERE
				"c_2"."ParentID" = "p"."ParentID" AND "c_2"."ChildID" > -100 AND
				"c_2"."ParentID" > 0
			ORDER BY
				"c_2"."ChildID"
		)
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_3"
			WHERE
				"c_3"."ParentID" = "p"."ParentID" AND "c_3"."ChildID" > -100
		)
			THEN '1'
		ELSE '0'
	END,
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c_4"
		WHERE
			"c_4"."ParentID" = "p"."ParentID" AND "c_4"."ChildID" > -100
	),
	(
		SELECT FIRST 1
			"c_5"."ParentID"
		FROM
			"Child" "c_5"
		WHERE
			"c_5"."ParentID" = "p"."ParentID" AND "c_5"."ChildID" > -100
		ORDER BY
			"c_5"."ChildID"
	),
	(
		SELECT FIRST 1
			"c_6"."ChildID"
		FROM
			"Child" "c_6"
		WHERE
			"c_6"."ParentID" = "p"."ParentID" AND "c_6"."ChildID" > -100
		ORDER BY
			"c_6"."ChildID"
	)
FROM
	"Parent" "p"

