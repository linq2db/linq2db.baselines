BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	UserStruct u
LIMIT 2

