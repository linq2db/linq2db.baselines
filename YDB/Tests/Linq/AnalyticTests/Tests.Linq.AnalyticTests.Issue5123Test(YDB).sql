-- YDB Ydb
SELECT
	l.Id as Id,
	ROW_NUMBER() OVER (PARTITION BY l.`Group` ORDER BY r.Payload IS NOT NULL, l.Id) as RowNum_1
FROM
	Issue5123Left l
		LEFT JOIN Issue5123Right r ON l.Id = r.Id
ORDER BY
	l.Id

