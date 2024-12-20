BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4460Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue4460Table
(
	Id      Int32,
	Code    Nullable(String),
	Name    Nullable(String),
	Surname Nullable(String)
)
ENGINE = Memory()

BeforeExecute
INSERT INTO Issue4460Table(Id, Code, Name, Surname) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Code,
	t1.Id,
	t1.Name,
	t1.Surname
FROM
	Issue4460Table t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4460Table

