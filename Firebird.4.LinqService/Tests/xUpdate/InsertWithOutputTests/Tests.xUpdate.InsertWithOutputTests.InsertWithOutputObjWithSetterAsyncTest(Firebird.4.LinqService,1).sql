﻿BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 100
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 1
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
	@Value,
	@value_1,
	@ValueStr
)
RETURNING
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

