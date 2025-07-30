BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT Max(Id) FROM Issue4702Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4702Table
(
	Id,
	Text
)
VALUES
(1,'Text 1'),
(2,'Text 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4702Table
(
	Text
)
VALUES
(
	'Text 3'
)

