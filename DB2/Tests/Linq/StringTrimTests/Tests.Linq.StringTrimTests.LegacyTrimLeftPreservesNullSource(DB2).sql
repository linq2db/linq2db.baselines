-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 100
DECLARE @CharColumn Char -- StringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn Char -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar -- String
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn VarChar -- String
SET     @NVarCharColumn = NULL

INSERT INTO "StringTrimTable"
(
	"Id",
	"CharColumn",
	"NCharColumn",
	"VarCharColumn",
	"NVarCharColumn"
)
VALUES
(
	@Id,
	@CharColumn,
	@NCharColumn,
	@VarCharColumn,
	@NVarCharColumn
)

-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "t"."VarCharColumn" IS NOT NULL THEN LTRIM("t"."VarCharColumn", '.+')
		ELSE NULL
	END
FROM
	"StringTrimTable" "t"
WHERE
	"t"."Id" = 100

