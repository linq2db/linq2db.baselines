-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "AttributeTableBase"
(
	"Id"
)
VALUES
(
	:Id
)

