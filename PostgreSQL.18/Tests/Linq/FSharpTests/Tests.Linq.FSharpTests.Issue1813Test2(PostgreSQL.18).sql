-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."Text"
FROM
	(
		SELECT DISTINCT
			"Item1"."Id"
		FROM
			"Names" "Item1"
	) m_1
		LEFT JOIN "Addresses" d ON m_1."Id" = d."Id"

-- PostgreSQL.18 PostgreSQL

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name"
FROM
	"Names" "tupledArg"
ORDER BY
	"tupledArg"."Id"

