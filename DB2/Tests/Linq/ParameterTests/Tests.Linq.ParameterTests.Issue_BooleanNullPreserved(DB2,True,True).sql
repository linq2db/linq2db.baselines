-- DB2 DB2.LUW DB2LUW

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	0
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

UPDATE
	"TestBool" "t1"
SET
	"Value" = NOT "t1"."Value"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = 0

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

