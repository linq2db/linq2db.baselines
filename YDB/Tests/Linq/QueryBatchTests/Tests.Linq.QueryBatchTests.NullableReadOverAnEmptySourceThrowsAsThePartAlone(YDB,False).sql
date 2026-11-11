-- YDB Ydb
SELECT
	i.`Value` as Value_1
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
		1 as Item1
	FROM
		BatchItem i
	WHERE
		i.Id > 100
	LIMIT 1
;
$CTE_2 = 	SELECT
		i_1.`Value` as Item1
	FROM
		BatchItem i_1
	WHERE
		i_1.Id > 100
	LIMIT 1
;

SELECT
	$CTE_1 as Item1,
	$CTE_2 as Item1_1

