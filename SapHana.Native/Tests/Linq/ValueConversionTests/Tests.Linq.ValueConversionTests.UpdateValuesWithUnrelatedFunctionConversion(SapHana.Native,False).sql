-- SapHana.Native SapHana
DECLARE @yes NVarChar(1) -- String
SET     @yes = 'X'
DECLARE @no NVarChar -- String
SET     @no = NULL

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CASE
		WHEN ("x"."Id" > 0) THEN :"yes"
		ELSE :"no"
	END
WHERE
	"x"."Id" = 1

-- SapHana.Native SapHana
SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 1
LIMIT 2

