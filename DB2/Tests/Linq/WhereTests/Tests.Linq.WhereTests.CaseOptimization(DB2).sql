BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithString"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "WhereWithString"
		(
			"Id"          Int           NOT NULL,
			"StringValue" NVarChar(255)     NULL,

			CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
VALUES
(1,'Str1')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."StringValue" LIKE '%Str%' ESCAPE '~' AND "x"."StringValue" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithString"';
END

