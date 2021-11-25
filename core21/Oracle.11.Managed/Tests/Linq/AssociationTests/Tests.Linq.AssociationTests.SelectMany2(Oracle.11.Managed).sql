BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	cp."ParentID",
	cp."Value1"
FROM
	"Parent" cp
		CROSS JOIN "Child" c_1

