BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3761Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue3761Table
(
	LETO     Int32,
	STEVILKA Int32,
	DATUM    Nullable(DateTime64(7)),
	SKUPAJ   Nullable(Decimal128(10)),

	 PRIMARY KEY (LETO, STEVILKA)
)
ENGINE = MergeTree()
ORDER BY (LETO, STEVILKA)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	YEAR(Coalesce(n.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))),
	MONTH(Coalesce(n.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))),
	sumOrNull(n.SKUPAJ)
FROM
	Issue3761Table n
WHERE
	n.DATUM < toDateTime64('2019-01-01 00:00:00.0000000', 7)
GROUP BY
	YEAR(Coalesce(n.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))),
	MONTH(Coalesce(n.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7)))
UNION ALL
SELECT
	YEAR(Coalesce(n_1.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))),
	MONTH(Coalesce(n_1.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))),
	sumOrNull(n_1.SKUPAJ)
FROM
	Issue3761Table n_1
WHERE
	n_1.DATUM >= toDateTime64('2019-01-01 00:00:00.0000000', 7)
GROUP BY
	YEAR(Coalesce(n_1.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))),
	MONTH(Coalesce(n_1.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7)))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3761Table

