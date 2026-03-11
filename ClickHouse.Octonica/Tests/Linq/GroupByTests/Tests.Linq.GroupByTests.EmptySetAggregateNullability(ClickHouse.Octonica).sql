-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			minOrNull(gr.ParentID) as Min_1
		FROM
			Parent gr
		WHERE
			gr.ParentID = -1
	) t1
WHERE
	t1.Min_1 <> 0 OR t1.Min_1 IS NULL

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			maxOrNull(gr.ParentID) as Max_1
		FROM
			Parent gr
		WHERE
			gr.ParentID = -1
	) t1
WHERE
	t1.Max_1 <> 0 OR t1.Max_1 IS NULL

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			avgOrNull(gr.ParentID) as Avg_1
		FROM
			Parent gr
		WHERE
			gr.ParentID = -1
	) t1
WHERE
	t1.Avg_1 <> toFloat64(0) OR t1.Avg_1 IS NULL

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			sumOrNull(gr.ParentID) as Sum_1
		FROM
			Parent gr
		WHERE
			gr.ParentID = -1
	) t1
WHERE
	t1.Sum_1 <> 0 OR t1.Sum_1 IS NULL

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			COUNT(*) as Count_1
		FROM
			Parent gr
		WHERE
			gr.ParentID = -1
	) t1
WHERE
	t1.Count_1 <> 0

