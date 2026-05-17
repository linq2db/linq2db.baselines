-- Oracle.11.Managed Oracle11
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id2 Int32
SET     @id2 = 10000

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = :id1 OR p."ParentID" >= :id1 OR p."ParentID" >= :id2
		ORDER BY
			p."ParentID"
	) t1
WHERE
	ROWNUM <= 1
ORDER BY
	t1."ParentID"

-- Oracle.11.Managed Oracle11
DECLARE @id1 Int32
SET     @id1 = 2
DECLARE @id2 Int32
SET     @id2 = 10000

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = :id1 OR p."ParentID" >= :id1 OR p."ParentID" >= :id2
		ORDER BY
			p."ParentID"
	) t1
WHERE
	ROWNUM <= 1
ORDER BY
	t1."ParentID"

