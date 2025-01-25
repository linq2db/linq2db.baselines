BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	UserStruct u
LIMIT 2

