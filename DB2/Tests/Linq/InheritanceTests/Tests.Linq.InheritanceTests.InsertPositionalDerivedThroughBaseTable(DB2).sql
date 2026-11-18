-- DB2 DB2.LUW DB2LUW
INSERT INTO "InheritanceFilterPositional"
(
	"Id",
	"Code",
	"Value"
)
VALUES
(
	1,
	1,
	42
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Value"
FROM
	"InheritanceFilterPositional" "t1"
FETCH NEXT 2 ROWS ONLY

