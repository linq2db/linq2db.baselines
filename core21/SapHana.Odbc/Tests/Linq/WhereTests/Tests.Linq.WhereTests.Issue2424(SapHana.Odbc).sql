BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Isue2424Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Isue2424Table"
(
	"Id"       Integer       NOT NULL,
	"StrValue" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '1'

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '3'

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '5'

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Isue2424Table"

