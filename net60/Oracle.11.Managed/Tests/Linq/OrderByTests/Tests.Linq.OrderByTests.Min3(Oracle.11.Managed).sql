BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	Min(t2."ParentID")
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			(
				SELECT
					p."ParentID"
				FROM
					"Parent" p
				ORDER BY
					p."Value1"
			) t1
		WHERE
			ROWNUM <= :take
	) t2

