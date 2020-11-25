BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	key_data_result."ParentID",
	key_data_result."Value1",
	gjd_ch."ParentID",
	gjd_ch."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1
	) key_data_result
		INNER JOIN "Child" gjd_ch ON gjd_ch."ParentID" = key_data_result."ParentID"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	p."ParentID",
	p."Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				ch."ParentID" = p."ParentID"
			ORDER BY
				ch."ChildID" DESC
			LIMIT :take
		) t1 ON 1=1
WHERE
	p."ParentID" = 1

