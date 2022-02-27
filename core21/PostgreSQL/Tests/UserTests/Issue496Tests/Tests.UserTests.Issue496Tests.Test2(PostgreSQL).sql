BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	key_data_result."ParentID",
	detail."ChildID",
	detail."ParentID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) key_data_result
		INNER JOIN "Child" detail ON key_data_result."ParentID" = detail."ParentID"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Parent" t1

