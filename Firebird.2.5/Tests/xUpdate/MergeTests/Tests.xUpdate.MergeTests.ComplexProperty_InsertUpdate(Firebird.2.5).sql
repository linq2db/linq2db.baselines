-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code VarChar(5) -- String
SET     @Code = 'alpha'
DECLARE @Nested_Field Char -- String
SET     @Nested_Field = '0'

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

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Code VarChar(4) -- String
SET     @Code = 'beta'
DECLARE @Nested_Field Char -- String
SET     @Nested_Field = '0'

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

-- Firebird.2.5 Firebird
DECLARE @Field Char -- String
SET     @Field = '1'
DECLARE @Field_1 Char -- String
SET     @Field_1 = '1'

MERGE INTO "ComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", CAST('alpha-new' AS VARCHAR(9)) AS "Code", CAST(@Field AS CHAR(1)) AS "Nested_Field" FROM rdb$database
	UNION ALL
	SELECT 3, CAST('gamma' AS VARCHAR(5)), CAST(@Field_1 AS CHAR(1)) FROM rdb$database) "Source"
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

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Field"
FROM
	"ComplexPropertyTarget" "t1"
ORDER BY
	"t1"."Id"

