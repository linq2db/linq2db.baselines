-- SapHana.Native SapHana
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale TinyInt -- Byte
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
	:"Code",
	:"Id",
	:"Name",
	:"IsMale"
)

-- SapHana.Native SapHana
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
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
	:"Code",
	:"Id",
	:"Name",
	:"Age"
)

-- SapHana.Native SapHana
SELECT
	"e"."Code",
	"e"."Id",
	"e"."Name",
	"e"."Age",
	"e"."IsMale"
FROM
	"Base" "e"
WHERE
	CASE
		WHEN "e"."Code" = 'BaseChild' OR "e"."Code" = 'Child' OR "e"."Code" = 'Child2'
			THEN CASE
			WHEN "e"."Id" <> 0 THEN 1
			ELSE 0
		END
		WHEN "e"."Id" = 0 THEN 1
		ELSE 0
	END = 1
ORDER BY
	"e"."Id"

