BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	c_1.Id,
	CASE
		WHEN c_1.Id IS NOT NULL THEN c_1.Value
		WHEN q.MainValue IS NOT NULL THEN q.MainValue
		ELSE ''
	END
FROM
	MainEntityObject q
		LEFT JOIN ChildEntityObject c_1 ON c_1.Id = q.Id
WHERE
	c_1.Id % 2 = 0

