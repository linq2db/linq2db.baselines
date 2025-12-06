-- ClickHouse.Driver ClickHouse

SELECT Max(Id) FROM Issue4702Table

INSERT ASYNC BULK Issue4702Table(Text)

-- ClickHouse.Driver ClickHouse

INSERT INTO Issue4702Table
(
	Text
)
VALUES
(
	'Text 3'
)

