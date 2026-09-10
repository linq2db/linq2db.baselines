-- YDB Ydb
DECLARE $parentId Int32
SET     $parentId = 12

SELECT
	i.Id as Id,
	i.Name as Name,
	i.ParentId as ParentId
FROM
	Issue4192TableNullable i
WHERE
	i.ParentId = $parentId

