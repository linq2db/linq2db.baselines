-- ClickHouse.Octonica ClickHouse
SELECT
	p.ParentID,
	x.X
FROM
	Parent p
		LEFT JOIN (
			SELECT
				toInt32(1) as X
			UNION ALL
			SELECT
				toInt32(2) as X
		) x ON 1=1

