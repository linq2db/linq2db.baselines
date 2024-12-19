BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4596Form"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4596Form"
		(
			"Id" Int      NOT NULL,
			C1   NChar(1) NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4596Item"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4596Item"
		(
			"Id"         Int           NOT NULL,
			"FormId"     Int           NOT NULL,
			"OrderIndex" Int           NOT NULL,
			"Name1"      NVarChar(255)     NULL,
			"Name2"      NVarChar(255)     NULL,
			"Name3"      NVarChar(255)     NULL
		)
	';
END

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"m_1"."cond",
	"m_1"."cond_1",
	"d"."Id",
	"d"."FormId",
	"d"."OrderIndex",
	"d"."Name1",
	"d"."Name2",
	"d"."Name3"
FROM
	(
		SELECT
			"t1"."Id",
			CASE
				WHEN "t1".C1 = 'T' THEN 1
				ELSE 0
			END as "cond",
			CASE
				WHEN "t1".C1 <> 'T' THEN 1
				ELSE 0
			END as "cond_1"
		FROM
			"Issue4596Form" "t1"
		FETCH NEXT 1 ROWS ONLY
	) "m_1",
	"Issue4596Item" "d"
WHERE
	"d"."FormId" = "m_1"."Id"
ORDER BY
	CASE
		WHEN "m_1"."cond" THEN "d"."OrderIndex"
		ELSE 0
	END,
	CASE
		WHEN "m_1"."cond_1" THEN "d"."Name1"
		ELSE ''
	END,
	CASE
		WHEN "m_1"."cond_1" THEN "d"."Name2"
		ELSE ''
	END,
	CASE
		WHEN "m_1"."cond_1" THEN "d"."Name3"
		ELSE ''
	END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1".C1,
	CASE
		WHEN "t1".C1 = 'T' THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1".C1 <> 'T' THEN 1
		ELSE 0
	END
FROM
	"Issue4596Form" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4596Item"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4596Form"';
END

