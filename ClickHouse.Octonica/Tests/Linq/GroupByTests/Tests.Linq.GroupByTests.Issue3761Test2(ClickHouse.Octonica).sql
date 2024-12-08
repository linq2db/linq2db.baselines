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
	t1.Year_1,
	t1.Month_1,
	sumOrNull(t1.SKUPAJ) as Sum_1
FROM
	(
		SELECT
			toYear(CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE toDateTime64('0001-01-01 00:00:00.0000000', 7)
			END) as Year_1,
			toMonth(CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE toDateTime64('0001-01-01 00:00:00.0000000', 7)
			END) as Month_1,
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
	t2.Year_1 as Year_1,
	t2.Month_1 as Month_1,
	sumOrNull(t2.SKUPAJ) as Sum_1
FROM
	(
		SELECT
			toYear(CASE
				WHEN n_1.DATUM IS NOT NULL THEN n_1.DATUM
				ELSE toDateTime64('0001-01-01 00:00:00.0000000', 7)
			END) as Year_1,
			toMonth(CASE
				WHEN n_1.DATUM IS NOT NULL THEN n_1.DATUM
				ELSE toDateTime64('0001-01-01 00:00:00.0000000', 7)
			END) as Month_1,
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
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3761Table

