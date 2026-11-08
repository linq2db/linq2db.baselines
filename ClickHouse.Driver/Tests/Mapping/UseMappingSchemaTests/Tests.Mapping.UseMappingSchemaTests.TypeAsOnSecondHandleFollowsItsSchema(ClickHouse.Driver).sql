-- ClickHouse.Driver ClickHouse
SELECT
	s.Id,
	CASE
		WHEN s.Kind = 'C1' THEN s.Kind
		ELSE NULL
	END
FROM
	Parent x
		INNER JOIN SourceSchemaShape s ON x.ParentID = s.Id

