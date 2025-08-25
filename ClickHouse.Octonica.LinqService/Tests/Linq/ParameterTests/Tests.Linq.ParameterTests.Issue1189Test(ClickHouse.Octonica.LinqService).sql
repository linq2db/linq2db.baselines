BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	k_1.ID,
	k_1.NAME,
	toDateTime64('2020-02-29 17:54:55.1231234', 7)
FROM
	Issue1189Customer k_1

