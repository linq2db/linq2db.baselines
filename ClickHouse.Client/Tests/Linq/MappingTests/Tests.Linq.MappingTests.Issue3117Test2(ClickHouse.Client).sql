BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO User
(
	Id
)
VALUES
(
	5
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id
FROM
	User t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	u.Id
FROM
	User u
WHERE
	u.Id = 5
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	u.Id
FROM
	User u
WHERE
	u.Id IN (5)
LIMIT 1

