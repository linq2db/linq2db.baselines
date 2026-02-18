-- ClickHouse.Driver ClickHouse

WITH BooksCte AS
(
	SELECT
		b.Id as Id,
		b.Title as Title,
		a_Author.Name as Author_Name
	FROM
		Books b
			INNER JOIN Authors a_Author ON b.AuthorId = a_Author.Id
)
SELECT
	b_1.Id
FROM
	(
		SELECT
			toString(NULL) as Name,
			r.Title as Title,
			r.Id as Id
		FROM
			BooksCte r
		UNION ALL
		SELECT
			t1.Author_Name as Name,
			toString(NULL) as Title,
			toInt32(NULL) as Id
		FROM
			BooksCte t1
	) b_1
WHERE
	b_1.Name = 'Steven' OR b_1.Title = 'Something'

