BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Table"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4620Table"
(
	"Id"         Int     NOT NULL,
	"IdContract" Int         NULL,
	"IdClient"   Int         NULL,
	"Sum"        decimal NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IdContract Integer -- Int32
SET     @IdContract = NULL
DECLARE @IdClient Integer -- Int32
SET     @IdClient = 1
DECLARE @Sum Numeric(1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	:Id,
	:IdContract,
	:IdClient,
	:Sum
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IdContract Integer -- Int32
SET     @IdContract = 2
DECLARE @IdClient Integer -- Int32
SET     @IdClient = NULL
DECLARE @Sum Numeric(1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	:Id,
	:IdContract,
	:IdClient,
	:Sum
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @IdContract Integer -- Int32
SET     @IdContract = NULL
DECLARE @IdClient Integer -- Int32
SET     @IdClient = NULL
DECLARE @Sum Numeric(1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	:Id,
	:IdContract,
	:IdClient,
	:Sum
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @IdContract Integer -- Int32
SET     @IdContract = 2
DECLARE @IdClient Integer -- Int32
SET     @IdClient = 1
DECLARE @Sum Numeric(1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	:Id,
	:IdContract,
	:IdClient,
	:Sum
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Client"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4620Client"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(8) -- String
SET     @Name = 'Client 1'

INSERT INTO "Issue4620Client"
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(8) -- String
SET     @Name = 'Client 2'

INSERT INTO "Issue4620Client"
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Contract"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4620Contract"
(
	"Id"       Int NOT NULL,
	"IdClient" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IdClient Integer -- Int32
SET     @IdClient = 1

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(
	:Id,
	:IdClient
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IdClient Integer -- Int32
SET     @IdClient = 2

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(
	:Id,
	:IdClient
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	(
		SELECT
			b."Id",
			"a_Client"."Name"
		FROM
			"Issue4620Table" b
				INNER JOIN "Issue4620Client" "a_Client" ON b."IdClient" = "a_Client"."Id"
		WHERE
			b."IdClient" IS NOT NULL
		UNION ALL
		SELECT
			b_1."Id",
			"a_Client_1"."Name"
		FROM
			"Issue4620Table" b_1
				INNER JOIN "Issue4620Contract" "a_Contract" ON b_1."IdContract" = "a_Contract"."Id"
				INNER JOIN "Issue4620Client" "a_Client_1" ON "a_Contract"."IdClient" = "a_Client_1"."Id"
		WHERE
			b_1."IdContract" IS NOT NULL
	) t1
ORDER BY
	t1."Id",
	t1."Name"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Contract"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Client"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Table"

