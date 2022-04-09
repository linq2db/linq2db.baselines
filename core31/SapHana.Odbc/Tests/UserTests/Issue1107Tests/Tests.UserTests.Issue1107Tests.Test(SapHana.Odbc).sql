BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1107TB"
(
	"Id"       Integer   NOT NULL,
	"TestDate" Timestamp NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @TestDate  -- DateTime
SET     @TestDate = '2018-01-01'

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1107TB"

