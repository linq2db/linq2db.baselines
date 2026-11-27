-- ClickHouse.Octonica ClickHouse
INSERT INTO SerialNumberPageTable
(
	PageNumber
)
SELECT
	9
FROM
	SerialNumberPageTable display
WHERE
	display.SerialNumber = '12345678901'

