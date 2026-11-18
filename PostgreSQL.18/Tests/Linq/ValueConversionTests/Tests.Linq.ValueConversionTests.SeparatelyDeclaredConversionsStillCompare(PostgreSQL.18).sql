-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Span Bigint -- Int64
SET     @Span = 54000000000

INSERT INTO "SeparatelyDeclaredRowA"
(
	"Id",
	"Span"
)
VALUES
(
	:Id,
	:Span
)

-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Span Bigint -- Int64
SET     @Span = 54000000000

INSERT INTO "SeparatelyDeclaredRowB"
(
	"Id",
	"Span"
)
VALUES
(
	:Id,
	:Span
)

-- PostgreSQL.18 PostgreSQL12
SELECT
	x."Id"
FROM
	"SeparatelyDeclaredRowA" x,
	"SeparatelyDeclaredRowB" y
WHERE
	x."Span" = y."Span"

