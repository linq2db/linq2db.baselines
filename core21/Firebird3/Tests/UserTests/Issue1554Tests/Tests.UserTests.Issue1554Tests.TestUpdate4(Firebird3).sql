﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1554Table"
(
	"Id"              Int                                  NOT NULL,
	"ClaimedKeyType"  VarChar(3) CHARACTER SET UNICODE_FSS NOT NULL,
	"ClaimedKeyTypeN" VarChar(3) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue1554Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird
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
-- Firebird3 Firebird
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554Table" "t1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1554Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1554Table"';
END

