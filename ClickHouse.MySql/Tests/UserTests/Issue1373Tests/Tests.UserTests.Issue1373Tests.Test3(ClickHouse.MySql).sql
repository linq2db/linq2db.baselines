BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1373Tests

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue1373Tests
(
	Id     Int32,
	Field1 Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	2,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	3,
	'test'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Field1
FROM
	Issue1373Tests t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1373Tests

