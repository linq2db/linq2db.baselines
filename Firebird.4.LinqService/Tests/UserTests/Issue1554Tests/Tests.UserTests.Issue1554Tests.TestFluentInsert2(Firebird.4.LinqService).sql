﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1554FluentTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1554FluentTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1554FluentTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1554FluentTable"
			(
				"Id"              Int                                  NOT NULL,
				"ClaimedKeyType"  VarChar(3) CHARACTER SET UNICODE_FSS NOT NULL,
				"ClaimedKeyTypeN" VarChar(3) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue1554FluentTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar -- String
SET     @ClaimedKeyTypeN = NULL

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
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554FluentTable" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1554FluentTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1554FluentTable"';
END

