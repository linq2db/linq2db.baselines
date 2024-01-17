BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p_1."i",
	p_1."ParentID",
	p_1."Value_1"
FROM
	(
		SELECT
			p."Value1" as "Value_1",
			CASE
				WHEN t1."item" = 0 THEN NULL
				ELSE p."ParentID"
			END as ID,
			t1."item" as "i",
			p."ParentID"
		FROM
			"Parent" p,
			(
				SELECT 0 AS "item" FROM sys.dual
				UNION ALL
				SELECT 1 FROM sys.dual) t1
	) p_1
WHERE
	(p_1.ID = p_1."Value_1" OR p_1.ID IS NULL AND p_1."Value_1" IS NULL)

