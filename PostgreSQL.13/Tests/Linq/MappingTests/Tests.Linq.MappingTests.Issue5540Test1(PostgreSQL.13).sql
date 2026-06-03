-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Items Varchar(3) -- String
SET     @Items = 'A;B'

INSERT INTO "Issue5540"
(
	"Id",
	"Items"
)
VALUES
(
	:Id,
	:Items
)

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Items"
FROM
	"Issue5540" t1

