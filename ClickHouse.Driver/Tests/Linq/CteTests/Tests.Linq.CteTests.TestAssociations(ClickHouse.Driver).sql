BeforeExecute
-- ClickHouse.Driver ClickHouse

WITH BooksCte AS
(
	SELECT
		t1.AuthorId,
		t1.Title
	FROM
		Books t1
)
SELECT
	b.Title
FROM
	BooksCte b
		INNER JOIN Authors a_Author ON b.AuthorId = a_Author.Id
WHERE
	a_Author.Name = 'Steven'

