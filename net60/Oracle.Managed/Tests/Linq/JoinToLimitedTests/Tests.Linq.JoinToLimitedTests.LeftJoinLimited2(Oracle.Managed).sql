BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	o."ParentID",
	o."Value1",
	t1."c_1",
	t1."ChildID"
FROM
	"Parent" o
		OUTER APPLY (
			SELECT
				cg."ParentID" as "c_1",
				cg."ChildID"
			FROM
				"Child" cg
			WHERE
				o."ParentID" = cg."ParentID"
			FETCH NEXT :take ROWS ONLY
		) t1

