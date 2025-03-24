BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t.ID
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t.ID

