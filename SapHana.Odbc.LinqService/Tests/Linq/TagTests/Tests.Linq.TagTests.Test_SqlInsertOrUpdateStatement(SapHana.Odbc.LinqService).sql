BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTable"
(
	"Id" Integer NOT NULL,
	"Fd" Integer     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Fd  -- Int32
SET     @Fd = 2
DECLARE @Id  -- Int32
SET     @Id = 1

/* My Test */
UPDATE
	"TestTable" "t1"
SET
	"Fd" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Fd  -- Int32
SET     @Fd = 2

/* My Test */
INSERT INTO "TestTable"
(
	"Id",
	"Fd"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestTable"

