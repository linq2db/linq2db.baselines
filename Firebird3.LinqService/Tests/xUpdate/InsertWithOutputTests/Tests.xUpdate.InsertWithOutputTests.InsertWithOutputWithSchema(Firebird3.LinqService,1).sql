﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithDataAndSchema')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithDataAndSchema"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithDataAndSchema')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableWithDataAndSchema"
			(
				"Id"       Int                                   NOT NULL,
				"Value"    Int                                   NOT NULL,
				"ValueStr" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 100
DECLARE @ValueStr VarChar(8) -- String
SET     @ValueStr = 'SomeStr1'

INSERT INTO "TableWithDataAndSchema"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)
RETURNING
	"TableWithDataAndSchema"."Id",
	"TableWithDataAndSchema"."Value",
	"TableWithDataAndSchema"."ValueStr"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithDataAndSchema')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithDataAndSchema"';
END

