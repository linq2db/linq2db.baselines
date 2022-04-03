﻿BeforeExecute
-- Firebird

CREATE TABLE "TableWithDataAndSchema"
(
	"Id"       Int                                   NOT NULL,
	"Value"    Int                                   NOT NULL,
	"ValueStr" VarChar(50) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 100
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
	@Value_1,
	@ValueStr
)
RETURNING
	"TableWithDataAndSchema"."Id",
	"TableWithDataAndSchema"."Value",
	"TableWithDataAndSchema"."ValueStr"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithDataAndSchema')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithDataAndSchema"';
END

