-- ClickHouse.Driver ClickHouse
SELECT
	x.Id,
	Coalesce(a_House.Levels, 0) > 1
FROM
	Pet3001 x
		INNER JOIN Person3001 a_Person ON x.PersonId = a_Person.Id
		LEFT JOIN House3001 a_House ON a_Person.HouseId = a_House.Id
LIMIT 1

