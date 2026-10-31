-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @CharColumn VarChar -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn NVarChar -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar -- AnsiString
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn NVarChar -- String
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
	:"Id",
	:"CharColumn",
	:"NCharColumn",
	:"VarCharColumn",
	:"NVarCharColumn"
)

-- SapHana.Native SapHana
SELECT
	CASE
		WHEN "t"."VarCharColumn" IS NOT NULL THEN RTRIM("t"."VarCharColumn", '.+')
		ELSE NULL
	END
FROM
	"StringTrimTable" "t"
WHERE
	"t"."Id" = 100

