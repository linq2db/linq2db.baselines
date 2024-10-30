BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NullableBool

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS NullableBool
(
	ID   Int32,
	Bool Nullable(Bool)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.Bool
FROM
	NullableBool r
WHERE
	r.Bool = true OR r.Bool IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NullableBool

