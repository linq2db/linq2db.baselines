-- YDB Ydb

SELECT
	author.Id as Id,
	author.Name as Name
FROM
	Authors author
		INNER JOIN Books book ON book.AuthorId = author.Id

