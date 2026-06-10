-- ClickHouse.MySql ClickHouse

INSERT INTO Campaign
(
	Guid,
	Sold
)
VALUES
(
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	100
)

-- ClickHouse.MySql ClickHouse

INSERT INTO Campaign
(
	Guid,
	Sold
)
VALUES
(
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),
	40
)

-- ClickHouse.MySql ClickHouse

INSERT INTO Campaign
(
	Guid,
	Sold
)
VALUES
(
	toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),
	200
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Guid,
	lc.Count,
	CASE
		WHEN lc.Count IS NOT NULL THEN toDecimal128(toFloat64(toDecimal128(lc.Count, 10)) / r.Sold, 10) * toDecimal128('100', 10)
		ELSE NULL
	END
FROM
	Campaign r
		LEFT JOIN (
			SELECT toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AS Key, 5 AS Count
			UNION ALL
			SELECT toUUID('a948600d-de21-4f74-8ac2-9516b287076e'), 10) lc ON r.Guid = lc.Key

