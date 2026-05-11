-- DB2 DB2.LUW DB2LUW
DECLARE @yes VarChar(1) -- String
SET     @yes = 'X'
DECLARE @no VarChar -- String
SET     @no = NULL

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CASE
		WHEN ("x"."Id" > 0) THEN CAST(@yes AS NVarChar(1))
		ELSE CAST(@no AS NVarChar(255))
	END
WHERE
	"x"."Id" = 1

-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

