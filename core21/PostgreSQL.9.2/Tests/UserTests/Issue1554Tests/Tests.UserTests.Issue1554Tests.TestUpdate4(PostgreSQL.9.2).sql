BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue1554Table"
(
	"Id"              Int  NOT NULL,
	"ClaimedKeyType"  text NOT NULL,
	"ClaimedKeyTypeN" text     NULL,

	CONSTRAINT "PK_Issue1554Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType Text(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN Text(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "Issue1554Table"
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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ClaimedKeyType Text(2) -- String
SET     @ClaimedKeyType = 'EC'

UPDATE
	"Issue1554Table"
SET
	"ClaimedKeyType" = :ClaimedKeyType,
	"ClaimedKeyTypeN" = :ClaimedKeyType
WHERE
	"Issue1554Table"."Id" = 0

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Id",
	t1."ClaimedKeyType",
	t1."ClaimedKeyTypeN"
FROM
	"Issue1554Table" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Issue1554Table"

