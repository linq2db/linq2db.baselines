-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Items Varchar(3) -- String
SET     @Items = 'A;B'

INSERT INTO "ExpressionMethodItemsEntity"
(
	"Id",
	"Items"
)
VALUES
(
	:Id,
	:Items
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Items"
FROM
	"ExpressionMethodItemsEntity" t1

