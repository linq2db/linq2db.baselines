BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1554FluentTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1554FluentTable"
(
	"Id"              Int  NOT NULL,
	"ClaimedKeyType"  text NOT NULL,
	"ClaimedKeyTypeN" text     NULL,

	CONSTRAINT "PK_Issue1554FluentTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType Text(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN Text(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "Issue1554FluentTable"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	:Id,
	:ClaimedKeyType,
	:ClaimedKeyTypeN
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ClaimedKeyType Text(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN Text(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	"Issue1554FluentTable"
SET
	"ClaimedKeyType" = :ClaimedKeyType,
	"ClaimedKeyTypeN" = :ClaimedKeyTypeN
WHERE
	"Issue1554FluentTable"."Id" = 0

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."ClaimedKeyType",
	t1."ClaimedKeyTypeN"
FROM
	"Issue1554FluentTable" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1554FluentTable"

