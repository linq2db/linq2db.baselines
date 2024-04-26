BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPerson"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ComplexPerson"
		(
			"Id"        Int           NOT NULL,
			"FirstName" NVarChar(255)     NULL,
			"LastName"  NVarChar(255)     NULL,

			CONSTRAINT "PK_ComplexPerson" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"x"."Id",
			"x"."FirstName",
			"x"."LastName"
		FROM
			"ComplexPerson" "x"
		WHERE
			"x"."Id" < 10
		UNION
		SELECT
			"x_1"."Id",
			"x_1"."FirstName",
			"x_1"."LastName"
		FROM
			"ComplexPerson" "x_1"
		WHERE
			"x_1"."Id" < 20
	) "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPerson"';
END

