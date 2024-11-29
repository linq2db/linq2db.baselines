BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "SampleClass"
		(
			"Id"        Int NOT NULL,
			"NullValue" Int     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_1"."Id",
	"a_1"."NullValue"
FROM
	(
		SELECT
			"a"."Id",
			CASE
				WHEN "a"."NullValue" IS NOT NULL THEN "a"."NullValue"
				ELSE 0
			END as KEYNUMB,
			"a"."NullValue"
		FROM
			"SampleClass" "a"
	) "a_1"
WHERE
	"a_1"."Id" = 0 AND "a_1".KEYNUMB = 0 OR "a_1"."Id" = 1 AND "a_1".KEYNUMB = 1 OR
	"a_1"."Id" = 2 AND "a_1".KEYNUMB = 2

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
END

