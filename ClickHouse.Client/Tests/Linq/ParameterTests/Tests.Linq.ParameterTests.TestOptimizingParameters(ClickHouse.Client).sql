BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	((_.PersonID = toInt32(1) OR _.PersonID <= toInt32(1)) OR _.PersonID = toInt32(1))

