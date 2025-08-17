BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @filterValue Integer -- Int32
SET     @filterValue = 2

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	x."Id" = :filterValue

