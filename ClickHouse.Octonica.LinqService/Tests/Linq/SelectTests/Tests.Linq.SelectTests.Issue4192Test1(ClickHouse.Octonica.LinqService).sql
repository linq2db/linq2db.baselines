BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4192TableNotNullable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue4192TableNotNullable
(
	Name     Nullable(String),
	ParentId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Name,
	i.ParentId
FROM
	Issue4192TableNotNullable i
WHERE
	i.ParentId = 12

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4192TableNotNullable

