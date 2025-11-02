-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code Text(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name Text(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname Text(5) -- String
SET     @Surname = 'Black'

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
VALUES
(
	:Id,
	:Code,
	:Name,
	:Surname
)

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Code",
	t1."Id",
	t1."Name",
	t1."Surname"
FROM
	"Issue4460Table" t1

