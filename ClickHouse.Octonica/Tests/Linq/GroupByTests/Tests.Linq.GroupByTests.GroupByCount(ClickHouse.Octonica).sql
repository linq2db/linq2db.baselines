BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			gr.ParentID as ParentID
		FROM
			Child gr
		GROUP BY
			gr.ParentID
	) t1

