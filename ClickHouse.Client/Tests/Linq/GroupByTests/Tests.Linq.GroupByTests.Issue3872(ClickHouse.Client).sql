BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3761Table

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	toString('MAX') as c1,
	maxOrNull(r.PersonID) as c2,
	toInt32(NULL) as c3
FROM
	Person r
UNION ALL
SELECT
	toString(NULL) as c1,
	toInt32(NULL) as c2,
	r_1.PersonID as c3
FROM
	Person r_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3761Table

