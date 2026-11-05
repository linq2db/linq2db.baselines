-- ClickHouse.Driver ClickHouse
SELECT
	c_1.Id,
	c_1.RegionId
FROM
	RegionalCustomer c_1
WHERE
	c_1.RegionId IS NOT NULL

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.RegionId
FROM
	RegionalCustomer t1

