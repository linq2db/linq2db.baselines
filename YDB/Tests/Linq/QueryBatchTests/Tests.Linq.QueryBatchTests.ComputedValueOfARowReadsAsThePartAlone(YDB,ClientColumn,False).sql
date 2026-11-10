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
		1 as not_null
	FROM
		BatchItem i
	WHERE
		i.Id = 1
	LIMIT 1
;
$CTE_2 = 	SELECT
		i_1.Id as Item1
	FROM
		BatchItem i_1
	WHERE
		i_1.Id = 1
	LIMIT 1
;

SELECT
	$CTE_1 as not_null,
	$CTE_2 as Item1

-- YDB Ydb
SELECT
	i.Id as Id
FROM
	BatchItem i
WHERE
	i.Id = 1
LIMIT 1

