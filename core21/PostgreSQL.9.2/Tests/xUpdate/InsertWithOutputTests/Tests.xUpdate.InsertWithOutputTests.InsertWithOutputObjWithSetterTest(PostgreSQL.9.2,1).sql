﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "TableWithData"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 100
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 1
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
	:Value_1,
	:value_2,
	:ValueStr
)
RETURNING
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

