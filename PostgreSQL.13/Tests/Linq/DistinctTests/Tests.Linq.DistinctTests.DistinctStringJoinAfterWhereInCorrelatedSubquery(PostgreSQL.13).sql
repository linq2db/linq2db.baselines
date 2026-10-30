-- PostgreSQL.13 PostgreSQL12
SELECT
	p."ParentID",
	Coalesce((
		SELECT
			STRING_AGG(t1."Ids", ',') FILTER (WHERE t1."Ids" <> '11')
		FROM
			(
				SELECT DISTINCT
					c_1."ChildID"::text as "Ids"
				FROM
					"Child" c_1
				WHERE
					c_1."ParentID" = p."ParentID"
			) t1
	), '')
FROM
	"Parent" p
ORDER BY
	p."ParentID"

