-- YDB Ydb
SELECT
	i.Id as Id
FROM
	BatchItem i
WHERE
	i.Id > 100
LIMIT 1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1,
	t1.GroupId as GroupId,
	t1.Name as Name
FROM
	BatchItem t1

-- YDB Ydb
$CTE_1 = 	SELECT
		i.Id as Item1
	FROM
		BatchItem i
	WHERE
		i.Id > 100
	LIMIT 1
;

SELECT
	$CTE_1 as Item1

