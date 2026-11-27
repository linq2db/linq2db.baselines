-- DB2 DB2.LUW DB2LUW
INSERT INTO "ShiftedDateRow"
(
	"Id",
	"Plain",
	"Date"
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"ShiftedDateRow" "t1"
FETCH NEXT 2 ROWS ONLY

