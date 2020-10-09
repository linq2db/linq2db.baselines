BeforeExecute
-- Firebird

CREATE TABLE "Issue1554FluentTable"
(
	"Id"              Int                                  NOT NULL,
	"ClaimedKeyType"  VarChar(3) CHARACTER SET UNICODE_FSS NOT NULL,
	"ClaimedKeyTypeN" VarChar(3) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue1554FluentTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

INSERT INTO "Issue1554FluentTable"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	Cast(@Id as Int),
	Cast(@ClaimedKeyType as VarChar(255) CHARACTER SET UNICODE_FSS),
	Cast(@ClaimedKeyTypeN as VarChar(255) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"t1"."Id", 
	"t1"."ClaimedKeyType", 
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554FluentTable" "t1"

BeforeExecute
-- Firebird

DROP TABLE "Issue1554FluentTable"

