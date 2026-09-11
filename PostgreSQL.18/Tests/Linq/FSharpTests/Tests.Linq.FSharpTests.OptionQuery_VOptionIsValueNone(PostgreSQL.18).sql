-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(1) -- String
SET     @Name = 'a'

INSERT INTO "VOptRow"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text -- String
SET     @Name = NULL

INSERT INTO "VOptRow"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.18 PostgreSQL12
SELECT
	x."Id",
	x."Name"
FROM
	"VOptRow" x
WHERE
	x."Name" IS NULL

