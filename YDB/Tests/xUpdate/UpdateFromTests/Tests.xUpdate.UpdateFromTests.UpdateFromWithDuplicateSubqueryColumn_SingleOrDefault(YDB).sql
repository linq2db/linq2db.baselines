-- YDB Ydb
DECLARE $id1 Int32
SET     $id1 = 1

$CTE_1 = 	SELECT
		r.Value3 as Value1
	FROM
		InsertFromWithConstantsTable r
	WHERE
		r.Id = $id1
;

UPDATE
	InsertFromWithConstantsTable
SET
	Value1 = $CTE_1,
	Value2 = $CTE_1,
	Value3 = 'string 1'u,
	Value4 = 'string 1'u

