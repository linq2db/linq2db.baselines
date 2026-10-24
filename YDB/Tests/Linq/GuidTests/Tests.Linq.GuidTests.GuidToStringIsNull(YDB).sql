-- YDB Ydb
DECLARE $Guid1 Uuid -- Guid
SET     $Guid1 = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')

SELECT
	x.Id as Id,
	x.NullableGuid as NullableGuid
FROM
	TableWithGuid x
WHERE
	x.NullableGuid IS NULL AND x.Id = $Guid1
LIMIT 2

