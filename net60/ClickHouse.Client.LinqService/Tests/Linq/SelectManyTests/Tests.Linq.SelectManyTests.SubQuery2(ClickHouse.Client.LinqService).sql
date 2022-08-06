BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.PersonID,
	p_1.FirstName
FROM
	Person p,
	Person p_1
WHERE
	p.PersonID = p_1.PersonID AND (p.PersonID = toInt32(1) OR p.PersonID = toInt32(2)) AND
	p_1.PersonID <> toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.PersonID,
	p_1.FirstName
FROM
	Person p,
	Person p_1
WHERE
	p.PersonID = p_1.PersonID AND (p.PersonID = toInt32(1) OR p.PersonID = toInt32(2)) AND
	p_1.PersonID <> toInt32(2)

