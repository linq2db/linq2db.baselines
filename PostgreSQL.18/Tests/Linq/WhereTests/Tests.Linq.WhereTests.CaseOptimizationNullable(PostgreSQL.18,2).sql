﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @filterValue Integer -- Int32
SET     @filterValue = 2

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	x."Id" = :filterValue

