BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
WHERE
	(
		SELECT
			r."Value1"
		FROM
			"Parent" r
		WHERE
			ROWNUM <= :take
	) IS NOT NULL

