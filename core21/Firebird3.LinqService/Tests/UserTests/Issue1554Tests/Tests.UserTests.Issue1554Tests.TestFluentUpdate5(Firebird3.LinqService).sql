BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1554FluentTable"
(
	"Id"              Int                                  NOT NULL,
	"ClaimedKeyType"  VarChar(3) CHARACTER SET UNICODE_FSS NOT NULL,
	"ClaimedKeyTypeN" VarChar(3) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue1554FluentTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN VarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "Issue1554FluentTable"
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
-- Firebird3 Firebird
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	"Issue1554FluentTable"
SET
	"Issue1554FluentTable"."ClaimedKeyType" = @ClaimedKeyType,
	"Issue1554FluentTable"."ClaimedKeyTypeN" = @ClaimedKeyTypeN
WHERE
	"Issue1554FluentTable"."Id" = 0

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"t1"."Id", 
	"t1"."ClaimedKeyType", 
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554FluentTable" "t1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1554FluentTable"

