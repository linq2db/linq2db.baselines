﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	author.Id,
	author.Name
FROM
	Authors author
		INNER JOIN Books book ON book.AuthorId = author.Id

