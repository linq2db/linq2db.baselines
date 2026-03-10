-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN (
			SELECT
				"c_2"."ParentID"
			FROM
				"Child" "c_2"
			WHERE
				"c_2"."ParentID" = "p"."ParentID" AND "c_2"."ChildID" > -100 AND
				"c_2"."ParentID" > 0
			ORDER BY
				"c_2"."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) IS NULL
			THEN 0
		ELSE (
			SELECT
				"c_3"."ParentID"
			FROM
				"Child" "c_3"
			WHERE
				"c_3"."ParentID" = "p"."ParentID" AND "c_3"."ChildID" > -100 AND
				"c_3"."ParentID" > 0
			ORDER BY
				"c_3"."ChildID"
			FETCH NEXT 1 ROWS ONLY
		)
	END,
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_4"
		WHERE
			"c_4"."ParentID" = "p"."ParentID" AND "c_4"."ChildID" > -100
	),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c_5"
		WHERE
			"c_5"."ParentID" = "p"."ParentID" AND "c_5"."ChildID" > -100
	),
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "c_1"."ParentID" ORDER BY "c_1"."ChildID") as "rn"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ChildID" > -100
		) "t1" ON "t1"."ParentID" = "p"."ParentID" AND "t1"."rn" = 1

