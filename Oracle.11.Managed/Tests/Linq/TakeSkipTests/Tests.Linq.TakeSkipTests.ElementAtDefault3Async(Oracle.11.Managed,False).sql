BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @n Int32
SET     @n = 3

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1",
			ROWNUM as RN
		FROM
			(
				SELECT
					p."ParentID",
					p."Value1"
				FROM
					"Parent" p
				WHERE
					p."ParentID" > 1
				ORDER BY
					p."ParentID"
			) t1
		WHERE
			ROWNUM <= (:n + 1)
	) t2
WHERE
	t2.RN > :n
ORDER BY
	t2."ParentID"

