BeforeExecute
-- Informix.DB2 Informix (asynchronously)

WITH BooksCte (Book_Id, Book_Title, Author_Name)
AS
(
	SELECT
		b.Id,
		b.Title,
		a_Author.Name
	FROM
		Books b
			INNER JOIN Authors a_Author ON b.AuthorId = a_Author.Id
)
SELECT
	b_1.Id
FROM
	(
		SELECT
			NULL::NVarChar(255) as Name,
			NVL(r.Book_Title, NULL) as Title,
			NVL(r.Book_Id, NULL) as Id
		FROM
			BooksCte r
		UNION ALL
		SELECT
			t1.Author_Name as Name,
			NULL::NVarChar(255) as Title,
			NULL::Int as Id
		FROM
			BooksCte t1
	) b_1
WHERE
	b_1.Name = 'Steven' OR b_1.Title = 'Something'

