-- DB2 DB2.LUW DB2LUW

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	123
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
FETCH NEXT 2 ROWS ONLY

