BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "PatentAssessment"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "PatentAssessment"
		(
			"PatentId"               Int            NOT NULL,
			"TechnicalReviewersText" NVarChar(1000)     NULL,

			CONSTRAINT "PK_PatentAssessment" PRIMARY KEY ("PatentId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2918Table2"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2918Table2"
		(
			"PatentId" Int NOT NULL,
			"UserId"   Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "User"
		(
			"Id"          Int            NOT NULL,
			"DisplayName" NVarChar(1000) NOT NULL,

			CONSTRAINT "PK_User" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @userId Integer(4) -- Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" "Target"
USING (
	SELECT
		"pa"."PatentId" as "source_PatentId",
		(
			SELECT
				LISTAGG("a_User"."DisplayName", '; ') WITHIN GROUP (ORDER BY "a_User"."DisplayName")
			FROM
				"Issue2918Table2" "patr"
					LEFT JOIN "User" "a_User" ON "patr"."UserId" = "a_User"."Id"
			WHERE
				"patr"."PatentId" = "pa"."PatentId"
		) as "source_TechnicalReviewersText"
	FROM
		"PatentAssessment" "pa"
	WHERE
		EXISTS(
			SELECT
				*
			FROM
				"Issue2918Table2" "patr_1"
			WHERE
				"patr_1"."UserId" = @userId AND "patr_1"."PatentId" = "pa"."PatentId"
		)
) "Source"
(
	"source_PatentId",
	"source_TechnicalReviewersText"
)
ON ("Target"."PatentId" = "Source"."source_PatentId")

WHEN MATCHED THEN
UPDATE
SET
	"TechnicalReviewersText" = "Source"."source_TechnicalReviewersText"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2918Table2"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "PatentAssessment"';
END

