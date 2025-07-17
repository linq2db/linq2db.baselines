BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 100
DECLARE @ValueStr VarChar(8) -- String
SET     @ValueStr = 'SomeStr1'

INSERT INTO "TableWithData"
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
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

