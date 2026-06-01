-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			(
				SELECT
					p."Value1",
					p."ParentID"
				FROM
					"Parent" p
				WHERE
					p."ParentID" < 5
				UNION
				SELECT
					p_1."Value1",
					p_1."ParentID"
				FROM
					"Parent" p_1
				WHERE
					p_1."ParentID" >= 3
			) t1
		ORDER BY
			t1."Value1" DESC NULLS FIRST,
			t1."ParentID"
	) t2
WHERE
	ROWNUM <= :take
ORDER BY
	t2."Value1" DESC NULLS FIRST,
	t2."ParentID"

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

