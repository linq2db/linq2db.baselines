BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	catz cat
		INNER JOIN owners owner_1 ON cat.OwnerId = owner_1.Id

