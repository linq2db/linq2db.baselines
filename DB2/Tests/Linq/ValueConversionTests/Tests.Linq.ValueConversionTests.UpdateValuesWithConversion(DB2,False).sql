-- DB2 DB2.LUW DB2LUW
DECLARE @Test1 Char -- StringFixedLength
SET     @Test1 = NULL

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CAST(@Test1 AS Char(1))
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Test1 Char(1) -- StringFixedLength
SET     @Test1 = 'X'

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CAST(@Test1 AS Char(1))
WHERE
	"x"."Id" = 2

-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Test1 Char(1) -- StringFixedLength
SET     @Test1 = 'X'

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Test1" = @Test1

