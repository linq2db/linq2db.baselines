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
	t1.Key_1,
	t1.Key_2,
	sumOrNull(t1.SKUPAJ)
FROM
	(
		SELECT
			YEAR(Coalesce(n.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))) as Key_1,
			MONTH(Coalesce(n.DATUM, toDateTime64('0001-01-01 00:00:00.0000000', 7))) as Key_2,
			n.SKUPAJ as SKUPAJ
		FROM
			Issue3761Table n
		WHERE
			n.DATUM < toDateTime64('2019-01-01 00:00:00.0000000', 7)
	) t1
GROUP BY
	t1.Key_1,
	t1.Key_2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3761Table

