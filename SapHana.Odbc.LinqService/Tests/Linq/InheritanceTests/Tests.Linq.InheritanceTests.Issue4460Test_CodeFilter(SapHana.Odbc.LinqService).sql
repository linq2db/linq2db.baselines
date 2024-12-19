BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Base"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Base"
(
	"Code" NVarChar(255)     NULL,
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Integer           NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Age  -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Age"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"e"."Code",
	"e"."Id",
	"e"."Age",
	"e"."Name"
FROM
	"Base" "e"
WHERE
	"e"."Code" <> 'Child' OR "e"."Code" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Base"

