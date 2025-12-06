-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	x."ParentID",
	t2."ChildID"
FROM
	"Parent" x
		INNER JOIN (
			SELECT DISTINCT
				c_2."ParentID",
				c_2."ChildID"
			FROM
				(
					SELECT
						c_1."ParentID",
						c_1."ChildID"
					FROM
						"Child" c_1
					UNION
					SELECT
						t1."ParentID",
						t1."ChildID"
					FROM
						"Child" t1
				) c_2
		) t2 ON t2."ParentID" = x."ParentID"
FETCH NEXT :take ROWS ONLY

