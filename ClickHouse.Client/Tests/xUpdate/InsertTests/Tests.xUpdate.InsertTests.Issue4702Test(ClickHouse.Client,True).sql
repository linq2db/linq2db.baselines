BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT Max(Id) FROM Issue4702Table

BeforeExecute
INSERT ASYNC BULK Issue4702Table(Text)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4702Table
(
	Text
)
VALUES
(
	'Text 3'
)

