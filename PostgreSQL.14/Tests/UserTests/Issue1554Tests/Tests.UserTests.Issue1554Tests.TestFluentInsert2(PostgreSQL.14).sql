-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType Text(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN Text -- String
SET     @ClaimedKeyTypeN = NULL

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."ClaimedKeyType",
	t1."ClaimedKeyTypeN"
FROM
	"Issue1554FluentTable" t1
LIMIT 2

