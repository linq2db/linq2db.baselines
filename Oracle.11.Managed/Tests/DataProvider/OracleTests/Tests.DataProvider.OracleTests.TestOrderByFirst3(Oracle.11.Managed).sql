-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1

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
					x."ParentID",
					x."Value1"
				FROM
					"Parent" x
				WHERE
					x."Value1" = 1
				ORDER BY
					x."ParentID" DESC
			) t1
		WHERE
			ROWNUM <= (:skip + 1)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2."ParentID" DESC

