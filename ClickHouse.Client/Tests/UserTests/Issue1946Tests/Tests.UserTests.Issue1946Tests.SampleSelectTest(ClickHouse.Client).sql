BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	u.Id
FROM
	Users u
WHERE
	u.Version < 1

