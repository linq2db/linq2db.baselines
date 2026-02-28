-- DB2 DB2.LUW DB2LUW
DECLARE @Test Char -- StringFixedLength
SET     @Test = NULL

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = @Test
WHERE
	"x"."Id" = 1

-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Test Char(1) -- StringFixedLength
SET     @Test = 'X'

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = @Test
WHERE
	"x"."Id" = 2

-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Test Char(1) -- StringFixedLength
SET     @Test = 'X'

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Test" = @Test

