﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableWithData"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 200
DECLARE @ValueStr Varchar(8) -- String
SET     @ValueStr = 'SomeStr2'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)
RETURNING
	"TableWithData"."Id",
	"TableWithData"."Value",
	"TableWithData"."ValueStr"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

