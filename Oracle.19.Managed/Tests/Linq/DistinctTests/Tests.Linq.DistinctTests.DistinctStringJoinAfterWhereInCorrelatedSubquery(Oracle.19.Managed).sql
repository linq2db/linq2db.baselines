-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID",
	Coalesce((
		SELECT
			LISTAGG(t1."Ids", ',') WITHIN GROUP (ORDER BY t1."Ids")
		FROM
			(
				SELECT DISTINCT
					CAST(x."ChildID" AS VarChar(255)) as "Ids"
				FROM
					"Child" x
				WHERE
					x."ParentID" = p."ParentID" AND CAST(x."ChildID" AS VarChar(255)) <> '11'
			) t1
	), '')
FROM
	"Parent" p
ORDER BY
	p."ParentID"

