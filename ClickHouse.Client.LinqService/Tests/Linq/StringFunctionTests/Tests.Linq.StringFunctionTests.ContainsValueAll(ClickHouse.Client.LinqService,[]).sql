BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND position('123[]456', '[]') > 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND position('123[]456', '[]') <= 0

