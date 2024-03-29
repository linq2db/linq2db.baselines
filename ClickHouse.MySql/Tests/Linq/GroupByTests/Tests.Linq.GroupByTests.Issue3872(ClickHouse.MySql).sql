﻿BeforeExecute
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
	maxOrNull(selectParam.PersonID)
FROM
	Person selectParam
UNION ALL
SELECT
	r.PersonID
FROM
	Person r

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3761Table

