-- YDB Ydb
DECLARE $filterValue Int32
SET     $filterValue = 2

SELECT
	x.Id as Id,
	x.StringValue as StringValue
FROM
	WhereWithString x
WHERE
	x.Id = $filterValue

