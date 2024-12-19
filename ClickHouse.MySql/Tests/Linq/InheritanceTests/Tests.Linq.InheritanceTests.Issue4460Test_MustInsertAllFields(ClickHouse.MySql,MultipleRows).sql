BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4460Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4460Table
(
	Id      Int32,
	Code    Nullable(String),
	Name    Nullable(String),
	Surname Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4460Table
(
	Id,
	Code,
	Name,
	Surname
)
VALUES
(1,'GrandChild','Tom','Black')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Code,
	t1.Id,
	t1.Name,
	t1.Surname
FROM
	Issue4460Table t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4460Table

