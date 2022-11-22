BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	key_data_result."ParentID",
	detail."ChildID",
	detail."ParentID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) key_data_result
		INNER JOIN "Child" detail ON Cast(key_data_result."ParentID" as Number(19)) = detail."ParentID"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID"
FROM
	"Parent" t1

