BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4460Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4460Table
(
	Id      Int32,
	Code    Nullable(String),
	Name    Nullable(String),
	Surname Nullable(String)
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK Issue4460Table(Id, Code, Name, Surname)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Code,
	t1.Id,
	t1.Name,
	t1.Surname
FROM
	Issue4460Table t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4460Table

