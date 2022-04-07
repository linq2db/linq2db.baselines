﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableWithData"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(1,-1,'Str1'),
(2,-2,'Str2'),
(3,-3,'Str3'),
(4,-4,'Str4'),
(5,-5,'Str5'),
(6,-6,'Str6'),
(7,-7,'Str7'),
(8,-8,'Str8'),
(9,-9,'Str9')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

UPDATE
	"TableWithData"
SET
	"Id" = "TableWithData"."Id",
	"Value" = "TableWithData"."Value" + 1,
	"ValueStr" = "TableWithData"."ValueStr" || 'Upd'
WHERE
	"TableWithData"."Id" = 3
RETURNING
	"TableWithData"."Value"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

