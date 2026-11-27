-- YDB Ydb
SELECT
	author.Id as Id,
	author.Name as Name
FROM
	JoinAuthors author
		INNER JOIN JoinBooks book ON book.AuthorId = author.Id

