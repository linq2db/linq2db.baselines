BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_ChildInner."ParentID"
FROM
	"NotNullParent" p
		INNER JOIN "NotNullChild" a_ChildInner ON p.ID = a_ChildInner."ParentID"

