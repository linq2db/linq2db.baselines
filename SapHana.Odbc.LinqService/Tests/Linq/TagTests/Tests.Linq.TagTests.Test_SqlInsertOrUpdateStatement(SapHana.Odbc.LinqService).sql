﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

/* My Test */
UPDATE
	"TestTable" "t1"
SET
	"Fd" = 2
WHERE
	"t1"."Id" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

/* My Test */
INSERT INTO "TestTable"
(
	"Id",
	"Fd"
)
VALUES
(
	1,
	2
)

