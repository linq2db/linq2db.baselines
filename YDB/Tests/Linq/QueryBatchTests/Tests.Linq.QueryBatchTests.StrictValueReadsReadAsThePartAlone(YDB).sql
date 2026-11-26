-- YDB Ydb
$CTE_1 = 	SELECT
		1 as not_null
	FROM
		BatchItem i
	WHERE
		i.Id = 3
	LIMIT 1
;
$CTE_2 = 	SELECT
		i_1.`Value` as Value_1
	FROM
		BatchItem i_1
	WHERE
		i_1.Id = 3
	LIMIT 1
;
$CTE_3 = 	SELECT
		1 as not_null
	FROM
		BatchItem i_2
	WHERE
		i_2.Id = 5
	LIMIT 1
;
$CTE_4 = 	SELECT
		i_3.Name as Name
	FROM
		BatchItem i_3
	WHERE
		i_3.Id = 5
	LIMIT 1
;
$CTE_5 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BatchItem t1
;

SELECT
	$CTE_1 as not_null,
	$CTE_2 as Value_1,
	$CTE_3 as not_null_1,
	$CTE_4 as Name,
	t2.Id as Id,
	t2.Name as Name_1,
	$CTE_5 as Count_1
FROM
	(
		SELECT
			1 as c1
	) t3
		CROSS JOIN (
			SELECT
				i_4.Id as Id,
				i_4.Name as Name
			FROM
				BatchItem i_4
			WHERE
				i_4.Id = 4
			LIMIT 1
		) t2

-- YDB Ydb
SELECT
	i.`Value` as Value_1
FROM
	BatchItem i
WHERE
	i.Id = 3
LIMIT 1

-- YDB Ydb
SELECT
	i.Name as Name
FROM
	BatchItem i
WHERE
	i.Id = 5
LIMIT 1

