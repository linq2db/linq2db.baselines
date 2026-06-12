-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code VarChar(5) -- String
SET     @Code = 'alpha'
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

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Code VarChar(4) -- String
SET     @Code = 'beta'
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

-- Firebird.4 Firebird4

MERGE INTO "ComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", CAST('alpha-new' AS VARCHAR(9)) AS "Code", TRUE AS "Nested_Field" FROM rdb$database
	UNION ALL
	SELECT 3, CAST('gamma' AS VARCHAR(5)), TRUE FROM rdb$database) "Source"
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

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Field"
FROM
	"ComplexPropertyTarget" "t1"
ORDER BY
	"t1"."Id"

