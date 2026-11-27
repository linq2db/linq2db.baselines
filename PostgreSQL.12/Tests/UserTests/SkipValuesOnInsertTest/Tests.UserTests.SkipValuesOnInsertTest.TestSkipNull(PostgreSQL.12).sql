-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "SkipOnInsertNulls"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.12 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertNulls" t
WHERE
	t."Id" = 1
LIMIT 1

