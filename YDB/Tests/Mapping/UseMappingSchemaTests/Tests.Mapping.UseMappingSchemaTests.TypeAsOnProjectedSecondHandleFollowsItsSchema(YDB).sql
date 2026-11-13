-- YDB Ydb
SELECT
	CASE
		WHEN s.Kind = 'C1'u THEN s.Kind
		ELSE NULL
	END as Kind
FROM
	Parent x
		INNER JOIN SourceSchemaShape s ON x.ParentID = s.Id
ORDER BY
	s.Id

