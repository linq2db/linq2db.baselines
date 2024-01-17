BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PersonID,
	t1.FirstName
FROM
	(
		SELECT
			p1.PersonID as PersonID,
			p2.PersonID + toInt32(1) as ID,
			p2.FirstName as FirstName
		FROM
			Person p1,
			Person p2
		WHERE
			p2.PersonID = toInt32(1)
	) t1
WHERE
	t1.PersonID = t1.ID - toInt32(1)

