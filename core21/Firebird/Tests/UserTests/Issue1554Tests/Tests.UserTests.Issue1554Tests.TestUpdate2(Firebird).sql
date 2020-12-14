BeforeExecute
-- Firebird

CREATE TABLE "Issue1554Table"
(
	"Id"              Int                                  NOT NULL,
	"ClaimedKeyType"  VarChar(3) CHARACTER SET UNICODE_FSS NOT NULL,
	"ClaimedKeyTypeN" VarChar(3) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue1554Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN VarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "Issue1554Table"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	@Id,
	@ClaimedKeyType,
	@ClaimedKeyTypeN
)

BeforeExecute
-- Firebird
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'

UPDATE
	"Issue1554Table"
SET
	"Issue1554Table"."ClaimedKeyType" = @ClaimedKeyType,
	"Issue1554Table"."ClaimedKeyTypeN" = @ClaimedKeyType
WHERE
	"Issue1554Table"."Id" = 0

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554Table" "t1"

BeforeExecute
-- Firebird

DROP TABLE "Issue1554Table"

