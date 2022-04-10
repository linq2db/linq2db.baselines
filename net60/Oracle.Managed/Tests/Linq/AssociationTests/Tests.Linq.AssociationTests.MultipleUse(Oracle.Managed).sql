BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1
DECLARE @take_1 Int32
SET     @take_1 = 1

SELECT
	t1."ParentID",
	t1."ChildID",
	t1."ParentID_1",
	t1."Value1"
FROM
	"Child" s
		OUTER APPLY (
			SELECT
				c_1."ParentID",
				c_1."ChildID",
				a_Parent."ParentID" as "ParentID_1",
				a_Parent."Value1"
			FROM
				"Child" c_1
					LEFT JOIN "Parent" a_Parent ON c_1."ParentID" = a_Parent."ParentID"
			WHERE
				c_1."ChildID" = s."ChildID"
			FETCH NEXT :take ROWS ONLY
		) t1
WHERE
	(
		SELECT
			1
		FROM
			"Child" c_2
		WHERE
			c_2."ChildID" = s."ChildID"
		FETCH NEXT :take_1 ROWS ONLY
	) IS NOT NULL

