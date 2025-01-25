﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 100
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ValueStr Text(8) -- String
SET     @ValueStr = 'SomeStr1'

INSERT INTO "TableWithData"
(
	"Value",
	"Id",
	"ValueStr"
)
VALUES
(
	:Value,
	:Id,
	:ValueStr
)
RETURNING
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

