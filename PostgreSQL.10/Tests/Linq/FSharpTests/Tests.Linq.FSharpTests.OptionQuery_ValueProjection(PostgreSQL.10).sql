-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(1) -- String
SET     @Name = 'a'
DECLARE @Age Integer -- Int32
SET     @Age = 5

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Id,
	:Name,
	:Age
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Id,
	:Name,
	:Age
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Name Text(1) -- String
SET     @Name = 'b'
DECLARE @Age Integer -- Int32
SET     @Age = 7

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Id,
	:Name,
	:Age
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Name"
FROM
	"OptRow" x
WHERE
	x."Name" IS NOT NULL

