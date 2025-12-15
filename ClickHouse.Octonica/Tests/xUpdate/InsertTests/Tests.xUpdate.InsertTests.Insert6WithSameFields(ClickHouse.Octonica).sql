-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertTable
(
	Id,
	CreatedOn,
	ModifiedOn
)
SELECT
	c_1.Id + 10,
	now(),
	now()
FROM
	InsertTable c_1
WHERE
	c_1.Id > 0

