BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	p."c1"
FROM
	(
		SELECT
			p1."ParentID",
			NULL as "c1"
		FROM
			"Parent" p1
		UNION
		SELECT
			p2."ParentID",
			p2."Value1" as "c1"
		FROM
			"Parent" p2
	) p

