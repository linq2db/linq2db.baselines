-- PostgreSQL.11 PostgreSQL
DECLARE @Has Boolean
SET     @Has = True

INSERT INTO "FluentIdentityClient"
(
	"Has"
)
VALUES
(
	:Has
)
RETURNING 
	"Id"

-- PostgreSQL.11 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Id",
	t1."Has"
FROM
	"FluentIdentityClient" t1
WHERE
	t1."Id" = :id
LIMIT 2

