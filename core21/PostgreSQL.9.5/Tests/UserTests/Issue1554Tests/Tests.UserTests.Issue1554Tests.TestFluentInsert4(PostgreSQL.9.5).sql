BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue1554FluentTable"
(
	"Id"              Int  NOT NULL,
	"ClaimedKeyType"  text NOT NULL,
	"ClaimedKeyTypeN" text     NULL,

	CONSTRAINT "PK_Issue1554FluentTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType Text(2) -- String
SET     @ClaimedKeyType = 'EC'

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
	:ClaimedKeyType
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Id",
	t1."ClaimedKeyType",
	t1."ClaimedKeyTypeN"
FROM
	"Issue1554FluentTable" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1554FluentTable"

