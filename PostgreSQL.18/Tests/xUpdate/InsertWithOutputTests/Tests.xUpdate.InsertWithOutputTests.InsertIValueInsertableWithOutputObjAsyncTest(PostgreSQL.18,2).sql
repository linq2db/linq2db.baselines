﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 200
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @ValueStr Text(8) -- String
SET     @ValueStr = 'SomeStr2'

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

