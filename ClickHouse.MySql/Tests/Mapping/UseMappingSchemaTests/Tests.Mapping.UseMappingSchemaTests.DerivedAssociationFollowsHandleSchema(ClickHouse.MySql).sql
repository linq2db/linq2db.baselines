-- ClickHouse.MySql ClickHouse
SELECT
	a_Parent.ParentID
FROM
	SourceSchemaShape x
		LEFT JOIN Parent a_Parent ON x.Id = a_Parent.ParentID AND x.Kind = 'C1'
ORDER BY
	x.Id

