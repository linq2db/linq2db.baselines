BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	key_data_result."ParentID",
	gjd_c."ParentID",
	gjd_c."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1
	) key_data_result
		INNER JOIN "Child" gjd_c ON gjd_c."ParentID" - :ParentID = key_data_result."ParentID"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1

