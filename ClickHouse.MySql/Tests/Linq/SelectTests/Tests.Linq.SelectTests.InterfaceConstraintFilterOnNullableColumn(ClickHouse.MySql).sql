-- ClickHouse.MySql ClickHouse
SELECT
	i.Id,
	i.Name,
	i.ParentId
FROM
	ParentIdNullableTable i
WHERE
	i.ParentId = 12

