-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.ItemId,
	d.UserId,
	d.Score
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Issue4458Item t1
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					Review r
				WHERE
					r.ItemId = t1.Id AND r.Score > 95
			)
	) m_1
		INNER JOIN Review d ON d.ItemId = m_1.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	stock_1.TotalAvailable
FROM
	Issue4458Item i
		LEFT JOIN (
			SELECT
				SUM(stock.QuantityAvailable) as TotalAvailable,
				stock.ItemId as ItemId
			FROM
				WarehouseStock stock
			GROUP BY
				stock.ItemId
		) stock_1 ON stock_1.ItemId = i.Id
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Review r
		WHERE
			r.ItemId = i.Id AND r.Score > 95
	)

