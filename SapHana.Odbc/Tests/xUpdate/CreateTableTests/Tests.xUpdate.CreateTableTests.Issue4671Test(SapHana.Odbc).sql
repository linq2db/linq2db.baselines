﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4671EntityTMP"
(
	"Id"    Integer GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	"Value" Integer                                  NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue4671Entity"
(
	"Value"
)
VALUES
(
	1
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue4671EntityTMP"
(
	"Value"
)
VALUES
(
	2
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"Issue4671Entity" "t1"
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"Issue4671EntityTMP" "t1"
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4671EntityTMP"

