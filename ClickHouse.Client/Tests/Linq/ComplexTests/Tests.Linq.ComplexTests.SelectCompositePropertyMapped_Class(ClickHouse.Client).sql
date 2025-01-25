BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	User u
LIMIT 2

