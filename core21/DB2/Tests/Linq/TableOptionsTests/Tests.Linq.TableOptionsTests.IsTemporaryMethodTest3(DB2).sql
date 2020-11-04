BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE SESSION."TestTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DECLARE GLOBAL TEMPORARY TABLE SESSION."TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t4"."Id_1",
	"t4"."Value_1",
	"t4"."Id",
	"t4"."Value_2",
	"t3"."Id",
	"t3"."Value"
FROM
	(
		SELECT
			"t2"."Id",
			"t1"."Id" as "Id_1",
			"t1"."Value" as "Value_1",
			"t2"."Value" as "Value_2"
		FROM
			SESSION."TestTable" "t1",
			SESSION."TestTable" "t2"
	) "t4"
		INNER JOIN SESSION."TestTable" "t3" ON "t4"."Id" = "t3"."Id"
WHERE
	"t4"."Id_1" = "t4"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE SESSION."TestTable"

