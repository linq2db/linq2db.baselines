﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithString"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WhereWithString"
			(
				"Id"          Int                                    NOT NULL,
				"StringValue" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringValue VarChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithString"';
END

