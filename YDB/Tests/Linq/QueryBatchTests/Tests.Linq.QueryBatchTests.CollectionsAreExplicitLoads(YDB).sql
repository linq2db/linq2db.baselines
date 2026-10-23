-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1,
	t1.GroupId as GroupId,
	t1.Name as Name
FROM
	BatchItem t1
ORDER BY
	t1.Id
LIMIT $take

-- YDB Ydb
$CTE_1 = 	SELECT
		COUNT(*) as Total
	FROM
		BatchItem t1
;

SELECT
	$CTE_1 as Total

