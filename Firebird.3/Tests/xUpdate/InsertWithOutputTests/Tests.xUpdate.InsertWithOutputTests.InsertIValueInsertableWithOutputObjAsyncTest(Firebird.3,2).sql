﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableWithData"
			(
				"Id"       Int                                   NOT NULL,
				"Value"    Int                                   NOT NULL,
				"ValueStr" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 200
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @ValueStr VarChar(8) -- String
SET     @ValueStr = 'SomeStr2'

INSERT INTO "TableWithData"
(
	"Value",
	"Id",
	"ValueStr"
)
VALUES
(
	Cast(@Value as Int),
	Cast(@Id as Int),
	Cast(@ValueStr as VarChar(50) CHARACTER SET UNICODE_FSS)
)
RETURNING
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

