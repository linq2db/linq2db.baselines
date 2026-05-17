-- Firebird.5 Firebird4
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
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(8))
)
RETURNING
	"TableWithDataAndSchema"."Id",
	"TableWithDataAndSchema"."Value",
	"TableWithDataAndSchema"."ValueStr"

