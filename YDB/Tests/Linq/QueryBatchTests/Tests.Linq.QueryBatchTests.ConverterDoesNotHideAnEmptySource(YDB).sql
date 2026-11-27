-- YDB Ydb
DECLARE Value Int32
SET     Value = 100

SELECT
	x.`Value` as Value_1
FROM
	ConvertedItem x
WHERE
	x.`Value` > $Value
LIMIT 1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	ConvertedItem t1

-- YDB Ydb
DECLARE Value Int32
SET     Value = 100

$CTE_1 = 	SELECT
		1 as Item1
	FROM
		ConvertedItem x
	WHERE
		x.`Value` > $Value
	LIMIT 1
;
$CTE_2 = 	SELECT
		x_1.`Value` as Item1
	FROM
		ConvertedItem x_1
	WHERE
		x_1.`Value` > $Value
	LIMIT 1
;

SELECT
	$CTE_1 as Item1,
	$CTE_2 as Item1_1

