﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	123
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
LIMIT 2

