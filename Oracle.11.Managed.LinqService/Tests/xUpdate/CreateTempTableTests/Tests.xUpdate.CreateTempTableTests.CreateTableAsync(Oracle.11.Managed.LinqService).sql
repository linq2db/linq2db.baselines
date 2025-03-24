BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	t.ID
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t.ID

