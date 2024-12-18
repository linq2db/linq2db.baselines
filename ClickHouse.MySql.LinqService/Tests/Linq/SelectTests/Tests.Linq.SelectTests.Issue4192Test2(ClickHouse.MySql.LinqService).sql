BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4192TableNullable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4192TableNullable
(
	Name     Nullable(String),
	ParentId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Name,
	i.ParentId
FROM
	Issue4192TableNullable i
WHERE
	i.ParentId = 12 AND i.ParentId IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4192TableNullable

