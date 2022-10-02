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
DECLARE @Guid6 Char(36) -- AnsiStringFixedLength
SET     @Guid6 = '66aa9df9-260f-4a2b-ac50-9ca8ce7ad725'
DECLARE @Value6  -- Int32
SET     @Value6 = 8

UPDATE
	"UpdateSetTest"
SET
	"UpdateSetTest"."Value2" = 20,
	"UpdateSetTest"."Value5" = "UpdateSetTest"."Value2" * 5,
	"UpdateSetTest"."Value1" = ?,
	"UpdateSetTest"."Value3" = 8,
	"UpdateSetTest"."Value6" = ?
WHERE
	"UpdateSetTest"."Id" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"x"."Id",
	"x"."Value1",
	"x"."Value2",
	"x"."Value3",
	"x"."Value4",
	"x"."Value5",
	"x"."Value6"
FROM
	"UpdateSetTest" "x"
WHERE
	"x"."Id" = 1
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UpdateSetTest"

