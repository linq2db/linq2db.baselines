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
	max(r.PersonID) as c1,
	toString('MAX') as c2,
	toInt32(NULL) as c3
FROM
	Person r
UNION ALL
SELECT
	toInt32(NULL) as c1,
	toString(NULL) as c2,
	r_1.PersonID as c3
FROM
	Person r_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3761Table

