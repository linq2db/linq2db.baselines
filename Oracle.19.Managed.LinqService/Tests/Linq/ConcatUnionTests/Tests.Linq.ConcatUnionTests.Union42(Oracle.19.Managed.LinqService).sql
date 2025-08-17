BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p_1."val"
FROM
	(
		SELECT
			p."ParentID" as "id",
			CAST(1 AS NUMBER(1)) as "val"
		FROM
			"Parent" p
		UNION
		SELECT
			ch."ParentID" as "id",
			CAST(0 AS NUMBER(1)) as "val"
		FROM
			"Child" ch
	) p_1

