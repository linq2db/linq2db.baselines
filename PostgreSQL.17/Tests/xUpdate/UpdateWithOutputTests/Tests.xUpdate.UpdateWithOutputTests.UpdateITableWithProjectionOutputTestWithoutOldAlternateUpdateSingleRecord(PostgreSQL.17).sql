BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableWithData"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DestinationTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DestinationTable"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(1,0,'0Dst'),
(2,-1,'-1Dst'),
(3,-2,'-2Dst'),
(4,-3,'-3Dst'),
(5,-4,'-4Dst'),
(6,-5,'-5Dst'),
(7,-6,'-6Dst'),
(8,-7,'-7Dst'),
(9,-8,'-8Dst')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"DestinationTable"
SET
	"Id" = t1."Id",
	"Value" = t1."Value",
	"ValueStr" = t1."ValueStr"
FROM
	"TableWithData" t1
WHERE
	t1."Id" = 3 AND "DestinationTable"."Id" = t1."Id"
RETURNING
	"DestinationTable"."Value"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DestinationTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

