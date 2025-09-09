BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO Issue1110TB
(
	Id,
	TimeStamp
)
VALUES
(
	10,
	toDateTime64('2020-02-29 17:54:55.1231234', 7)
)

