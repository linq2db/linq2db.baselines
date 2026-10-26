-- YDB Ydb
SELECT
	s.Id as Id
FROM
	Parent p
		INNER JOIN SourceSchemaShape s ON p.ParentID = s.Id
WHERE
	s.Kind = 'C1'u

