-- PostgreSQL.12 PostgreSQL12
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

