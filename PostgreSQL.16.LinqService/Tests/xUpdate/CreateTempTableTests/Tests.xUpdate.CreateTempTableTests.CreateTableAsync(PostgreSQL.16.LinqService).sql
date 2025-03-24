BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

