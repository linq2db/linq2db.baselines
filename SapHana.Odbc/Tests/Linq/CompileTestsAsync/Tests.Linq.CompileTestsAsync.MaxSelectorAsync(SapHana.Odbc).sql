BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AsyncDataTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "AsyncDataTable"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 6

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 7

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 8

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 9

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 10

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 2

SELECT
	MAX("c_1"."Id")
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" > ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AsyncDataTable"

