-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code VarChar(5) -- String
SET     @Code = 'first'
DECLARE @Nested_Field Boolean
SET     @Nested_Field = FALSE

INSERT INTO "ComplexPropertyTarget"
(
	"Id",
	"Code",
	"Field"
)
VALUES
(
	@Id,
	@Code,
	@Nested_Field
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Code VarChar(7) -- String
SET     @Code = 'skipped'
DECLARE @Nested_Field Boolean
SET     @Nested_Field = FALSE

INSERT INTO "ComplexPropertyTarget"
(
	"Id",
	"Code",
	"Field"
)
VALUES
(
	@Id,
	@Code,
	@Nested_Field
)

-- Firebird.3 Firebird3

MERGE INTO "ComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", CAST('first-updated' AS VARCHAR(13)) AS "Code", TRUE AS "Nested_Field" FROM rdb$database) "Source"
(
	"Id",
	"Code",
	"Nested_Field"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code",
	"Field" = "Source"."Nested_Field"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Field"
FROM
	"ComplexPropertyTarget" "t1"
ORDER BY
	"t1"."Id"

