-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType Text(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN Text(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "FluentMappedEnumKeyRecord"
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ClaimedKeyType Text(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN Text(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	"FluentMappedEnumKeyRecord"
SET
	"ClaimedKeyType" = :ClaimedKeyType,
	"ClaimedKeyTypeN" = :ClaimedKeyTypeN
WHERE
	"FluentMappedEnumKeyRecord"."Id" = 0

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."ClaimedKeyType",
	t1."ClaimedKeyTypeN"
FROM
	"FluentMappedEnumKeyRecord" t1
LIMIT 2

