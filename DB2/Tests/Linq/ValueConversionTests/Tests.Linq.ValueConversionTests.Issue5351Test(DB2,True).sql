-- DB2 DB2.LUW DB2LUW

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = NULL
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

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = 'X'
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

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Test" = 'X'

