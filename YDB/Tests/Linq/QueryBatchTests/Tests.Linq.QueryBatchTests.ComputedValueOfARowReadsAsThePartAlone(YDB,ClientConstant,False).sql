-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1,
	t1.GroupId as GroupId,
	t1.Name as Name
FROM
	BatchItem t1

-- YDB Ydb
DECLARE Item1 Int32
SET     Item1 = 2

$CTE_1 = 	SELECT
		1 as Item1
	FROM
		BatchItem i
	WHERE
		i.Id = 1
	LIMIT 1
;

SELECT
	$CTE_1 as Item1,
	$Item1 as c1

-- YDB Ydb
SELECT
	1 as c1
FROM
	BatchItem i
WHERE
	i.Id = 1
LIMIT 1

