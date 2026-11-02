-- DuckDB
DECLARE $id  -- Int32
SET     $id = 2

UPDATE
	FilteredAssociatedTable
SET
	Note = 'test'
FROM
	FilteredMainTable m_1
WHERE
	m_1.Id = $id AND m_1.Id = FilteredAssociatedTable.Id AND
	FilteredAssociatedTable.Flag

-- DuckDB
SELECT
	a.Note
FROM
	FilteredAssociatedTable a
ORDER BY
	a.Id

