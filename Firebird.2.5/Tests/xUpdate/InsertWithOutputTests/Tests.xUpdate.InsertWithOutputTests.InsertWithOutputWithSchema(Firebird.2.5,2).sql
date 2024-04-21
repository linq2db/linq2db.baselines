BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithDataAndSchema')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithDataAndSchema"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = 200
DECLARE @ValueStr VarChar(8) -- String
SET     @ValueStr = 'SomeStr2'

INSERT INTO "TableWithDataAndSchema"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(8))
)
RETURNING
	"TableWithDataAndSchema"."Id",
	"TableWithDataAndSchema"."Value",
	"TableWithDataAndSchema"."ValueStr"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithDataAndSchema')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithDataAndSchema"';
END

