BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	author.Id,
	author.Name
FROM
	Authors author
		INNER JOIN Books book ON book.AuthorId = author.Id

