BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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

