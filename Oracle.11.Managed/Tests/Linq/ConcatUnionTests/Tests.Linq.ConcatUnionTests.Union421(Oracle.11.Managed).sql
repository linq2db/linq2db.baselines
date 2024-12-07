BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p_2."val"
FROM
	(
		SELECT
			p."ParentID",
			CAST(1 AS Char(1)) as "val"
		FROM
			"Parent" p
		UNION
		SELECT
			p_1."ParentID",
			CAST(0 AS Char(1)) as "val"
		FROM
			"Parent" p_1
		UNION
		SELECT
			ch."ParentID",
			CAST(0 AS Char(1)) as "c1"
		FROM
			"Child" ch
	) p_2

