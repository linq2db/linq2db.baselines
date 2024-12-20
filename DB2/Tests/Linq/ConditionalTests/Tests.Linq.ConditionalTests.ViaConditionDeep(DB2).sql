BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ConditionalData"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ConditionalData"
		(
			"Id"         Int           NOT NULL,
			"StringProp" NVarChar(255)     NULL,

			CONSTRAINT "PK_ConditionalData" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(1,'String1'),
(2,'String2'),
(3,NULL),
(4,'String4'),
(5,'String5'),
(6,NULL),
(7,'String7'),
(8,'String8'),
(9,NULL),
(10,'String10'),
(11,'-1')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN "x"."StringProp" = '2' THEN 1
		ELSE 0
	END,
	"x"."StringProp",
	1,
	"x"."StringProp" || '2',
	2
FROM
	"ConditionalData" "x"
WHERE
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN '2'
		WHEN "x"."StringProp" = '2' THEN "x"."StringProp"
		ELSE "x"."StringProp" || '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN NULL
		WHEN "x"."StringProp" = '2' THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."StringProp"
FROM
	"ConditionalData" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ConditionalData"';
END

