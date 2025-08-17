BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO Issue3927Table
(
	PageNumber
)
SELECT
	9
FROM
	Issue3927Table display
WHERE
	display.SerialNumber = '12345678901'

