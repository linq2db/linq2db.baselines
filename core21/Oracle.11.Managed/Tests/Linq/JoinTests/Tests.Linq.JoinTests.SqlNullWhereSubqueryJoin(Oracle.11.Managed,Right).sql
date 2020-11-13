BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 10
DECLARE @take_1 Int32
SET     @take_1 = 10

SELECT
	p."ParentID",
	p."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
		WHERE
			ROWNUM <= :take
	) p1
		RIGHT JOIN (
			SELECT
				t2."ParentID",
				t2."Value1"
			FROM
				"Parent" t2
			WHERE
				ROWNUM <= :take_1
		) p ON p1."ParentID" = p."ParentID" AND (p1."Value1" IS NULL AND p."Value1" IS NULL OR p1."Value1" = p."Value1")

