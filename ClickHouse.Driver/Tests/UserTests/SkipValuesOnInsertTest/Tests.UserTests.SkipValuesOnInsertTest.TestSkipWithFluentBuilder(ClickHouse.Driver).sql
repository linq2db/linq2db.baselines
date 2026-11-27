-- ClickHouse.Driver ClickHouse
INSERT INTO SkipOnInsertFluent
(
	Id,
	Name
)
VALUES
(
	1,
	NULL
)

-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertFluent t
WHERE
	t.Id = 1
LIMIT 1

