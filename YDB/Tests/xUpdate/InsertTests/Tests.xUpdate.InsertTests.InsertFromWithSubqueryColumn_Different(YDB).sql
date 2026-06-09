-- YDB Ydb
DECLARE $id2 Int32
SET     $id2 = 2
DECLARE $id4 Int32
SET     $id4 = 4
DECLARE $id1 Int32
SET     $id1 = 1
DECLARE $id3 Int32
SET     $id3 = 3

$CTE_1 = 	SELECT
		r.Value4 as Value1
	FROM
		InsertFromWithConstantsTable r
	WHERE
		r.Id = $id2
;
$CTE_2 = 	SELECT
		r_1.Value3 as Value2
	FROM
		InsertFromWithConstantsTable r_1
	WHERE
		r_1.Id = $id4
	LIMIT 1
;
$CTE_3 = 	SELECT
		r.Value4 as Value1
	FROM
		InsertFromWithConstantsTable r
	WHERE
		r.Id = $id2
;
$CTE_4 = 	SELECT
		r_1.Value3 as Value2
	FROM
		InsertFromWithConstantsTable r_1
	WHERE
		r_1.Id = $id4
	LIMIT 1
;

INSERT INTO InsertFromWithConstantsTable
(
	Id,
	`Value`,
	Value1,
	Value2,
	Value3,
	Value4
)
VALUES
(
	$id1,
	$id3,
	$CTE_3,
	$CTE_4,
	'string 1'u,
	'string 2'u
)

