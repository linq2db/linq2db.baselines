﻿BeforeExecute
-- Firebird.4 Firebird4
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
	@Value,
	@Id,
	@ValueStr
)
RETURNING
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

