-- Firebird.4 Firebird4
DECLARE @Value Integer -- Int32
SET     @Value = 100
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ValueStr VarChar(8) -- String
SET     @ValueStr = 'SomeStr1'

INSERT INTO "TableWithData"
(
	"Value",
	"Id",
	"ValueStr"
)
VALUES
(
	CAST(@Value AS Int),
	CAST(@Id AS Int),
	CAST(@ValueStr AS VARCHAR(8))
)
RETURNING
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

