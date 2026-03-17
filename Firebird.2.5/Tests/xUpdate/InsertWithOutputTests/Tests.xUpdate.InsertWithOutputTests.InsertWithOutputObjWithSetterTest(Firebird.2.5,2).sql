-- Firebird.2.5 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 200
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 2
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
	CAST(@Value AS Int),
	CAST(@value_1 AS Int),
	CAST(@ValueStr AS VARCHAR(8))
)
RETURNING
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

