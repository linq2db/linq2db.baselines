-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Code VarChar(5) -- String
SET     @Code = 'alpha'
DECLARE @Nested_Field SmallInt(4) -- Int16
SET     @Nested_Field = 0

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

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Code VarChar(4) -- String
SET     @Code = 'beta'
DECLARE @Nested_Field SmallInt(4) -- Int16
SET     @Nested_Field = 0

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

-- DB2 DB2.LUW DB2LUW

MERGE INTO "ComplexPropertyTarget" "Target"
USING (VALUES
	(1,'alpha-new',1), (3,'gamma',1)
) "Source"
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

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Field"
FROM
	"ComplexPropertyTarget" "t1"
ORDER BY
	"t1"."Id"

