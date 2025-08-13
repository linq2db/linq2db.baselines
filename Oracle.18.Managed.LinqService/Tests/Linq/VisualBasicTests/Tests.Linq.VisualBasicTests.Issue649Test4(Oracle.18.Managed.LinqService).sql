BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	data_1."ParentID",
	data_1."ChildID",
	MAX(data_1."ChildID")
FROM
	"Child" data_1
GROUP BY
	data_1."ParentID",
	data_1."ChildID"

