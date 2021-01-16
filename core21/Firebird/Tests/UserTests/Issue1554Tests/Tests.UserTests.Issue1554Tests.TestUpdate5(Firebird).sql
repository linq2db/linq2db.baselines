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
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	"Issue1554Table"
SET
	"Issue1554Table"."ClaimedKeyType" = @ClaimedKeyType,
	"Issue1554Table"."ClaimedKeyTypeN" = @ClaimedKeyTypeN
WHERE
	"Issue1554Table"."Id" = 0

BeforeExecute
-- Firebird

DROP TABLE "Issue1554Table"

