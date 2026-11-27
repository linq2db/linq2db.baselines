-- DuckDB
DECLARE $parentId INTEGER -- Int32
SET     $parentId = 12

SELECT
	i.Id,
	i.Name,
	i.ParentId
FROM
	ParentIdNullableTable i
WHERE
	i.ParentId = $parentId

