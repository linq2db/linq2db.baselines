-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'alpha'
DECLARE @Nested_Field TinyInt(1) -- Byte
SET     @Nested_Field = 0

INSERT INTO "ComplexPropertyTarget"
(
	"Id",
	"Code",
	"Field"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'beta'
DECLARE @Nested_Field TinyInt(1) -- Byte
SET     @Nested_Field = 0

INSERT INTO "ComplexPropertyTarget"
(
	"Id",
	"Code",
	"Field"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

MERGE INTO "ComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", 'alpha-new' AS "Code", 1 AS "Nested_Field" FROM DUMMY
	UNION ALL
	SELECT 3, 'gamma', 1 FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code",
	"Field" = "Source"."Nested_Field"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Code",
	"Field"
)
VALUES
(
	"Source"."Id",
	"Source"."Code",
	"Source"."Nested_Field"
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Field"
FROM
	"ComplexPropertyTarget" "t1"
ORDER BY
	"t1"."Id"

