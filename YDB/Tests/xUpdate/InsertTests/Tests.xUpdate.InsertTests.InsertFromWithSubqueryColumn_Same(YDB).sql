-- YDB Ydb
DECLARE $id2 Int32
SET     $id2 = 2
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
	$CTE_1,
	$CTE_1,
	'string 1'u,
	'string 2'u
)

