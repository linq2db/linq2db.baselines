BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	key_data_result."ParentID",
	key_data_result."Value1",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			"a_ParentTest"."ParentID",
			"a_ParentTest"."Value1"
		FROM
			"Parent" a
				LEFT JOIN "Parent" "a_ParentTest" ON a."ParentID" = "a_ParentTest"."ParentID" AND (a."Value1" = "a_ParentTest"."Value1" OR a."Value1" IS NULL AND "a_ParentTest"."Value1" IS NULL)
		WHERE
			("a_ParentTest"."ParentID" IS NULL OR EXISTS(
				SELECT
					*
				FROM
					"Child" t1
				WHERE
					"a_ParentTest"."ParentID" = t1."ParentID"
			))
	) key_data_result
		INNER JOIN "Child" detail ON key_data_result."ParentID" = detail."ParentID"
ORDER BY
	detail."ChildID"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	a."ParentID",
	"a_ParentTest"."ParentID",
	"a_ParentTest"."Value1"
FROM
	"Parent" a
		LEFT JOIN "Parent" "a_ParentTest" ON a."ParentID" = "a_ParentTest"."ParentID" AND (a."Value1" = "a_ParentTest"."Value1" OR a."Value1" IS NULL AND "a_ParentTest"."Value1" IS NULL)
WHERE
	("a_ParentTest"."ParentID" IS NULL OR EXISTS(
		SELECT
			*
		FROM
			"Child" t1
		WHERE
			"a_ParentTest"."ParentID" = t1."ParentID"
	))

