BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t3."ParentID",
	t3."Value1"
FROM
	(
		SELECT
			t2."ParentID",
			t2."Value1"
		FROM
			(
				SELECT DISTINCT
					t1."ParentID",
					t1."Value1"
				FROM
					"Parent" t1
			) t2
		ORDER BY
			t2."ParentID"
	) t3
WHERE
	ROWNUM <= :take
ORDER BY
	t3."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

