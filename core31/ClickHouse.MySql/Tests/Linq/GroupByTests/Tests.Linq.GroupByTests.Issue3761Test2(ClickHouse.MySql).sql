BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3761Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Year_1,
	t1.Month_1,
	sumOrNull(t1.SKUPAJ)
FROM
	(
		SELECT
			YEAR(Coalesce(n.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))) as Year_1,
			MONTH(Coalesce(n.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))) as Month_1,
			n.SKUPAJ as SKUPAJ
		FROM
			Issue3761Table n
		WHERE
			n.DATUM < toDateTime64('2019-01-01 00:00:00.0000000', 7)
	) t1
GROUP BY
	t1.Year_1,
	t1.Month_1
UNION ALL
SELECT
	t2.Year_1,
	t2.Month_1,
	sumOrNull(t2.SKUPAJ)
FROM
	(
		SELECT
			YEAR(Coalesce(n_1.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))) as Year_1,
			MONTH(Coalesce(n_1.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))) as Month_1,
			n_1.SKUPAJ as SKUPAJ
		FROM
			Issue3761Table n_1
		WHERE
			n_1.DATUM >= toDateTime64('2019-01-01 00:00:00.0000000', 7)
	) t2
GROUP BY
	t2.Year_1,
	t2.Month_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3761Table

