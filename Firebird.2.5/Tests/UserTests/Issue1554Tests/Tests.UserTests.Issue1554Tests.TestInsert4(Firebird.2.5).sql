﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1554Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1554Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1554Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1554Table"
			(
				"Id"              Int                                  NOT NULL,
				"ClaimedKeyType"  VarChar(3) CHARACTER SET UNICODE_FSS NOT NULL,
				"ClaimedKeyTypeN" VarChar(3) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue1554Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

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
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554Table" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1554Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1554Table"';
END

