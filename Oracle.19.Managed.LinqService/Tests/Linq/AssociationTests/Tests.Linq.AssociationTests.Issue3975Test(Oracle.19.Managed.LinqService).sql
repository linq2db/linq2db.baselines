BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	lw_Issue3975TestClass."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."ParentID"
		FROM
			(
				SELECT
					t1."ParentID"
				FROM
					"Parent" t1
				FETCH NEXT :take ROWS ONLY
			) t2
	) lw_Issue3975TestClass
		INNER JOIN "Child" detail ON lw_Issue3975TestClass."ParentID" = detail."ParentID"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID"
FROM
	"Parent" t1
FETCH NEXT :take ROWS ONLY

