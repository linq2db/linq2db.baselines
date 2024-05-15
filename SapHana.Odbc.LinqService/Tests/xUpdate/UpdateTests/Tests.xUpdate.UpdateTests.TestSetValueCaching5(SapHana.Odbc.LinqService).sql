BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UpdateSetTest"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "UpdateSetTest"
(
	"Id"     Integer   NOT NULL,
	"Value1" Char (36) NOT NULL,
	"Value2" Integer   NOT NULL,
	"Value3" Integer   NOT NULL,
	"Value4" Char (36)     NULL,
	"Value5" Integer       NULL,
	"Value6" Integer       NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1 Char(36) -- AnsiStringFixedLength
SET     @Value1 = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @Value2  -- Int32
SET     @Value2 = 10
DECLARE @Value3  -- Int32
SET     @Value3 = 6
DECLARE @Value4 Char(36) -- AnsiStringFixedLength
SET     @Value4 = NULL
DECLARE @Value5  -- Int32
SET     @Value5 = NULL
DECLARE @Value6  -- Int32
SET     @Value6 = NULL

INSERT INTO "UpdateSetTest"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4",
	"Value5",
	"Value6"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value5  -- Int32
SET     @Value5 = 11
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value5" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	"t1"."Value5"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value5  -- Int32
SET     @Value5 = 12
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value5" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	"t1"."Value5"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UpdateSetTest"

