BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p_2."Value1",
	p_2."Value_1",
	p_2."ParentID"
FROM
	(
		SELECT
			p_1."ParentID",
			p_1."Value1" * 100 as "Value_1",
			p_1."Value1"
		FROM
			"Parent" p_1
	) p_2
WHERE
	p_2."ParentID" = 1 AND p_2."Value_1" > 0

