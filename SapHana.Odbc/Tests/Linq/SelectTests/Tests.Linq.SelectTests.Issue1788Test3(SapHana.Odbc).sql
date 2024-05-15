BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table1788"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table1788"
(
	"Id"     Integer NOT NULL,
	"Value1" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 11

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value1  -- Int32
SET     @Value1 = 22

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
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
DECLARE @Value1  -- Int32
SET     @Value1 = 33

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"Table1788" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"l"."Value1"
FROM
	"Table1788" "p"
		LEFT JOIN "Table1788" "l" ON "l"."Id" = "p"."Id" + 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table1788"

