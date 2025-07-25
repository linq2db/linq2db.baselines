﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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
	NEW."Id",
	NEW."Value",
	NEW."ValueStr"

