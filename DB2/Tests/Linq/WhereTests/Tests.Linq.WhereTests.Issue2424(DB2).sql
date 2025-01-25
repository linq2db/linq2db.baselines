BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Isue2424Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Isue2424Table"
		(
			"Id"       Int           NOT NULL,
			"StrValue" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
VALUES
(1,'1'),
(3,'3'),
(5,'5')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" = '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" = '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '5'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '5'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '1'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '1'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Isue2424Table"';
END

