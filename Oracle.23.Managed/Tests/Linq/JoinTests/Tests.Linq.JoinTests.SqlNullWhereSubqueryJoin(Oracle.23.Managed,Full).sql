-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	p2."ParentID",
	p2."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
		FETCH NEXT :take ROWS ONLY
	) p1
		FULL JOIN (
			SELECT
				p."ParentID",
				p."Value1"
			FROM
				"Parent" p
			FETCH NEXT 10 ROWS ONLY
		) p2 ON p1."ParentID" = p2."ParentID" AND (p1."Value1" = p2."Value1" OR p1."Value1" IS NULL AND p2."Value1" IS NULL)

