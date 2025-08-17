BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
		WHERE
			ROWNUM <= :take
	) t2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

