BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND position('123n456', 'n') > 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND NOT position('123n456', 'n') > 0

