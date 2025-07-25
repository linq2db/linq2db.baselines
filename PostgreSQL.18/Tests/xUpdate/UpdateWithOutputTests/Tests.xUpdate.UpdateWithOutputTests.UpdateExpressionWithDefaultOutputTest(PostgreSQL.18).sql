﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

UPDATE
	"DestinationTable"
SET
	"Id" = s."Id",
	"Value" = s."Value",
	"ValueStr" = s."ValueStr"
FROM
	"TableWithData" s
WHERE
	"DestinationTable"."Id" = s."Id"
RETURNING
	OLD."Id",
	OLD."Value",
	OLD."ValueStr",
	NEW."Id",
	NEW."Value",
	NEW."ValueStr"

