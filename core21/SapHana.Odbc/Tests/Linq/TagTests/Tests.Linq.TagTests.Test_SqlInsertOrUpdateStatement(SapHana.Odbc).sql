﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTable"
(
	"Id" Integer NOT NULL,
	"Fd" Integer     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

/* My Test */
UPDATE
	"TestTable"
SET
	"TestTable"."Id" = 1
WHERE
	"TestTable"."Id" = 1

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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

