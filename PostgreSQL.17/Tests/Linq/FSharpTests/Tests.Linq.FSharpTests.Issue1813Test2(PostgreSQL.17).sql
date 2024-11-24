BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Names"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Names"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Addresses"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Addresses"
(
	"Id"   Int  NOT NULL,
	"Text" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name"
FROM
	"Names" "tupledArg"
ORDER BY
	"tupledArg"."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Addresses"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Names"

