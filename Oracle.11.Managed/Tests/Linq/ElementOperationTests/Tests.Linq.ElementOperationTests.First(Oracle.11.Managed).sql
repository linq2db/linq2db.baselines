-- Oracle.11.Managed Oracle11

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
		ORDER BY
			t1."ParentID" DESC
	) t2
WHERE
	ROWNUM <= 1
ORDER BY
	t2."ParentID" DESC

