BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r."Min_1",
	r.MAX_1,
	r.AVG_1,
	r.SUM_1,
	r.COUNT_1
FROM
	(
		SELECT
			MIN(gr."ParentID") as "Min_1",
			MAX(gr."ParentID") as MAX_1,
			AVG(gr."ParentID") as AVG_1,
			SUM(gr."ParentID") as SUM_1,
			COUNT(*) as COUNT_1
		FROM
			"Parent" gr
		WHERE
			gr."ParentID" = -1
	) r
WHERE
	r."Min_1" <> 0

