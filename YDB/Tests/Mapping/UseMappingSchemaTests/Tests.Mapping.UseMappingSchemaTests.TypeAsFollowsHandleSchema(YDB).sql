-- YDB Ydb
SELECT
	CASE
		WHEN c_1.Kind = 'C1'u THEN c_1.Kind
		ELSE NULL
	END as Kind
FROM
	SourceSchemaShape c_1
ORDER BY
	c_1.Id

