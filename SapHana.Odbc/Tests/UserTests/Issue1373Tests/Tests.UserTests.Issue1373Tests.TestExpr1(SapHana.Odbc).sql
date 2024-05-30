BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1373Tests"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1373Tests"
(
	"Id"     Integer       NOT NULL,
	"Field1" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Field1 NVarChar -- String
SET     @Field1 = NULL

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	2,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Field1 NVarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	3,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"Issue1373Tests" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1373Tests"

