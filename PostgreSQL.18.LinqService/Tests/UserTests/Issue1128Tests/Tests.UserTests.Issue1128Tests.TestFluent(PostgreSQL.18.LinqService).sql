BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "AttributeBase"
(
	"Id"
)
VALUES
(
	:Id
)

