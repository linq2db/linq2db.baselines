﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableWithData"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
(9,-9,'Str9'),
(10,-10,'Str10')

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DestinationTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DestinationTable"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 200
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 200

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	s."Id" + :param,
	s."Value" + :param,
	s."ValueStr" || Cast(:param_1 as VarChar(100))
FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	"DestinationTable"."Id",
	"DestinationTable"."Value",
	"DestinationTable"."ValueStr"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DestinationTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

