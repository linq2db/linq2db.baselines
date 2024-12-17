BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Request"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Request"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_Request" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Metric"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Metric"
		(
			"Id"        Int   GENERATED ALWAYS AS IDENTITY NOT NULL,
			"RequestId" Int                                NOT NULL,
			"Value"     Float                                  NULL,

			CONSTRAINT "PK_Metric" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."cond_1",
	"t1"."cond"
FROM
	"Request" "a"
		LEFT JOIN (
			SELECT
				"a_Metrics"."Value" as "cond",
				CASE
					WHEN "a_Metrics"."Value" IS NOT NULL THEN 1
					ELSE 0
				END as "cond_1",
				ROW_NUMBER() OVER (PARTITION BY "a_Metrics"."RequestId" ORDER BY "a_Metrics"."RequestId") as "rn",
				"a_Metrics"."RequestId"
			FROM
				"Metric" "a_Metrics"
		) "t1" ON "a"."Id" = "t1"."RequestId" AND "t1"."rn" <= 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Metric"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Request"';
END

