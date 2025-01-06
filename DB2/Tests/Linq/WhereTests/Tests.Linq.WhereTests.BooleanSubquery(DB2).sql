BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithBool"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "WhereWithBool"
		(
			"Id"        Int      NOT NULL,
			"BoolValue" smallint NOT NULL,

			CONSTRAINT "PK_WhereWithBool" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "WhereWithBool"
(
	"Id",
	"BoolValue"
)
VALUES
(1,1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	"t"."BoolValue"
FROM
	"WhereWithBool" "t",
	"WhereWithBool" "x"
WHERE
	"x"."BoolValue" AND "x"."Id" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithBool"';
END

