-- ClickHouse.Driver ClickHouse
SELECT
	CASE
		WHEN 'A-100Жук' IN (
			SELECT
				concat(p.Sku, 'Жук')
			FROM
				ConcatProduct p
		)
			THEN true
		ELSE false
	END

-- ClickHouse.Driver ClickHouse
SELECT
	CASE
		WHEN 'A-100Щит' IN (
			SELECT
				concat(p.Sku, 'Жук')
			FROM
				ConcatProduct p
		)
			THEN true
		ELSE false
	END

