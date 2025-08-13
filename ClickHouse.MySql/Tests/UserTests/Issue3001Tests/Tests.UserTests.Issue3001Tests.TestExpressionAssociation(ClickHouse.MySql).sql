BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	CASE
		WHEN a_House.Levels > 1 THEN true
		ELSE false
	END
FROM
	Pet3001 x
		INNER JOIN Person3001 a_Person ON x.PersonId = a_Person.Id
		LEFT JOIN House3001 a_House ON a_Person.HouseId = a_House.Id
LIMIT 1

