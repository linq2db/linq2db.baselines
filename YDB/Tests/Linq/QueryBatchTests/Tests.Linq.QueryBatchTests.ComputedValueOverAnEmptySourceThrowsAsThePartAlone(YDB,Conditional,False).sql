-- YDB Ydb
SELECT
	i.Id > 0 as c1,
	i.Id as Id,
	i.GroupId as GroupId
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
		i_1.Id > 0 as c1
	FROM
		BatchItem i_1
	WHERE
		i_1.Id > 100
	LIMIT 1
;
$CTE_3 = 	SELECT
		i_2.Id as Id
	FROM
		BatchItem i_2
	WHERE
		i_2.Id > 100
	LIMIT 1
;
$CTE_4 = 	SELECT
		i_3.GroupId as GroupId
	FROM
		BatchItem i_3
	WHERE
		i_3.Id > 100
	LIMIT 1
;

SELECT
	$CTE_1 as Item1,
	$CTE_2 as c1,
	$CTE_3 as Id,
	$CTE_4 as GroupId

