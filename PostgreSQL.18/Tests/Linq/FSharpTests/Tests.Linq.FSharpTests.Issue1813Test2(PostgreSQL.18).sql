-- PostgreSQL.18 PostgreSQL13
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

-- PostgreSQL.18 PostgreSQL13
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

-- PostgreSQL.18 PostgreSQL13
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

-- PostgreSQL.18
-- Batch 1
SELECT
	m_1."Id",
	d."Id",
	d."Text"
FROM
	"Names" m_1
		LEFT JOIN "Addresses" d ON m_1."Id" = d."Id"
ORDER BY
	m_1."Id"

-- Batch 2
SELECT
	after_1."Id",
	after_1."Name"
FROM
	"Names" after_1
ORDER BY
	after_1."Id"
