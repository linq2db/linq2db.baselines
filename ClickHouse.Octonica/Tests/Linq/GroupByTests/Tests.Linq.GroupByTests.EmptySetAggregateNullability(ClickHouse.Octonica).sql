BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Min_1,
	r.MAX_1,
	r.AVG_1,
	r.SUM_1,
	r.COUNT_1
FROM
	(
		SELECT
			min(gr.ParentID) as Min_1,
			max(gr.ParentID) as MAX_1,
			avg(gr.ParentID) as AVG_1,
			sum(gr.ParentID) as SUM_1,
			COUNT(*) as COUNT_1
		FROM
			Parent gr
		WHERE
			gr.ParentID = -1
	) r
WHERE
	r.Min_1 <> 0

