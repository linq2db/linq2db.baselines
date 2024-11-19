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
	maxOrNull(r.PersonID) as c1
FROM
	Person r
UNION ALL
SELECT
	r_1.PersonID as c1
FROM
	Person r_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3761Table

