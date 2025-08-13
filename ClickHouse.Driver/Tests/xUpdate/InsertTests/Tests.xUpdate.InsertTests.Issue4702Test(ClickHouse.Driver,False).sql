BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT Max(Id) FROM Issue4702Table

BeforeExecute
INSERT ASYNC BULK Issue4702Table(Text)

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Issue4702Table
(
	Text
)
VALUES
(
	'Text 3'
)

