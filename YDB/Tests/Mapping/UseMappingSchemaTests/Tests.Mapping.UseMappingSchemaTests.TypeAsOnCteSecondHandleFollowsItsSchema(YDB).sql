-- YDB Ydb
$CTE_1 = 	SELECT
		t1.Id as Id,
		t1.Kind as Kind
	FROM
		SourceSchemaShape t1
;

SELECT
	CASE
		WHEN s.Kind = 'C1'u THEN s.Kind
		ELSE NULL
	END as Kind
FROM
	Parent x
		INNER JOIN $CTE_1 s ON x.ParentID = s.Id
ORDER BY
	s.Id

