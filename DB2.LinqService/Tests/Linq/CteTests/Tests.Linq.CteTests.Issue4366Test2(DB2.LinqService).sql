BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Dto"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Dto"
		(
			"id"        Int           NOT NULL,
			"name"      NVarChar(255)     NULL,
			"parent_id" Int               NULL,
			"FullName"  NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH "d"
(
	"FullName",
	"Dto_id",
	"Dto_name",
	"Dto_parent_id",
	"Dto_FullName"
)
AS
(
	SELECT
		"a"."name",
		"a"."id",
		"a"."name",
		"a"."parent_id",
		"a"."FullName"
	FROM
		"Dto" "a"
	WHERE
		"a"."parent_id" IS NULL
	UNION ALL
	SELECT
		"recur"."FullName" || ' > ' || "t1"."name",
		"t1"."id",
		"t1"."name",
		"t1"."parent_id",
		"t1"."FullName"
	FROM
		"Dto" "t1",
		"d" "recur"
	WHERE
		"recur"."Dto_id" = "t1"."parent_id"
)
SELECT
	"t2"."Dto_id",
	"t2"."Dto_name",
	"t2"."Dto_parent_id",
	"t2"."Dto_FullName",
	"t2"."FullName"
FROM
	"d" "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Dto"';
END

