BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_Parent."Value1"
FROM
	"Parent" x
		LEFT JOIN "Parent" a_Parent ON x."ParentID" = a_Parent."Value1"
WHERE
	x."Value1" IS NULL AND ROWNUM <= 1

