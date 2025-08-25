BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO MessageEventDTOTb2
(
	Id
)
SELECT
	x.Id
FROM
	MessageEventDTO x

