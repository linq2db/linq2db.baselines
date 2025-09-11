BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'name1'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(5) -- String
SET     @Name = 'name2'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text Text(7) -- String
SET     @Text = 'address'

INSERT INTO "Addresses"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	m_1."Id",
	d."Id",
	d."Text"
FROM
	"Names" m_1
		LEFT JOIN "Addresses" d ON m_1."Id" = d."Id"
ORDER BY
	m_1."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name"
FROM
	"Names" "tupledArg"
ORDER BY
	"tupledArg"."Id"

