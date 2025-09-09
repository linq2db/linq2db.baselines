BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	' ' || CAST(Coalesce("t1"."Value1", 0) AS NVarChar(11)),
	"t1"."SUM_1",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_2"
					LEFT JOIN "Parent" "a_Parent_1" ON "c_2"."ParentID" = "a_Parent_1"."ParentID"
			WHERE
				"a_Parent_1"."ParentID" = "t1"."ParentID" AND ("a_Parent_1"."Value1" = "t1"."Value1" OR "a_Parent_1"."Value1" IS NULL AND "t1"."Value1" IS NULL)
		)
			THEN 1
		ELSE 0
	END,
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "p"
				LEFT JOIN "Parent" "a_Parent_2" ON "p"."ParentID" = "a_Parent_2"."ParentID"
		WHERE
			"a_Parent_2"."ParentID" = "t1"."ParentID" AND ("a_Parent_2"."Value1" = "t1"."Value1" OR "a_Parent_2"."Value1" IS NULL AND "t1"."Value1" IS NULL)
	)
FROM
	(
		SELECT
			"f"."Value1",
			(
				SELECT
					SUM("c_1"."ChildID")
				FROM
					"Child" "c_1"
						LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
				WHERE
					"a_Parent"."ParentID" = "f"."ParentID" AND ("a_Parent"."Value1" = "f"."Value1" OR "a_Parent"."Value1" IS NULL AND "f"."Value1" IS NULL)
			) as "SUM_1",
			"f"."ParentID"
		FROM
			"Parent" "f"
	) "t1"
WHERE
	' ' || CAST(Coalesce("t1"."Value1", 0) AS NVarChar(11)) LIKE '%1%' ESCAPE '~' AND
	"t1"."SUM_1" > 0

