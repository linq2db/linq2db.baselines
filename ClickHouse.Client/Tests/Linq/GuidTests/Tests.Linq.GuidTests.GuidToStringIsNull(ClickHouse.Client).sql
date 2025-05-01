BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.NullableGuid
FROM
	TableWithGuid x
WHERE
	x.NullableGuid IS NULL AND x.Id = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
LIMIT 2

