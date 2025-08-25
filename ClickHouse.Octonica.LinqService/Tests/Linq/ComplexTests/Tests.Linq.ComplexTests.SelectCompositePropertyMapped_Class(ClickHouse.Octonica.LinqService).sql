BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	User u
LIMIT 2

