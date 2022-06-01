BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"     Int         NOT NULL,
			A        Int             NULL,
			B        Int             NULL,
			"EnumA"  NChar(1)        NULL,
			"EnumB"  NChar(1)        NULL,
			"CEnumA" VarChar(20)     NULL,
			"CEnumB" VarChar(20)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(100,NULL,NULL,NULL,NULL,NULL,NULL),
(101,NULL,1,NULL,'A',NULL,'___One___'),
(110,1,NULL,'A',NULL,'___One___',NULL),
(111,1,1,'A','A','___One___','___One___'),
(112,1,2,'A','B','___One___','___Two___'),
(121,2,1,'B','A','___Two___','___One___')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id"
FROM
	"Src" "x"
WHERE
	"x".A <= "x".B
ORDER BY
	"x"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END

