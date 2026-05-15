-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @CharColumn Char -- String
SET     @CharColumn = NULL
DECLARE @NCharColumn Char -- String
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

-- Firebird.3 Firebird3

SELECT
	"t"."VarCharColumn"
FROM
	"StringTrimTable" "t"
WHERE
	"t"."Id" = 100

