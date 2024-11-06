BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Base"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Base"
(
	"Code"   NVarChar(255)     NULL,
	"Id"     Integer       NOT NULL,
	"Name"   NVarChar(255)     NULL,
	"IsMale" TinyInt           NULL,
	"Age"    Integer           NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale  -- Byte
SET     @IsMale = 0

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"IsMale"
)
VALUES
(
	?,
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
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age  -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"Age"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN "e"."Code" = 'Child2' THEN 1
		ELSE 0
	END,
	"e"."Code",
	"e"."Id",
	"e"."Name",
	"e"."Age",
	CASE
		WHEN "e"."Code" = 'Child' THEN 1
		ELSE 0
	END,
	"e"."IsMale",
	CASE
		WHEN "e"."Code" = 'BaseChild' THEN 1
		ELSE 0
	END
FROM
	"Base" "e"
WHERE
	"e"."Code" = 'BaseChild' OR
	"e"."Code" = 'Child' OR
	"e"."Code" = 'Child2' OR
	"e"."Id" <> 0
ORDER BY
	"e"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Base"

