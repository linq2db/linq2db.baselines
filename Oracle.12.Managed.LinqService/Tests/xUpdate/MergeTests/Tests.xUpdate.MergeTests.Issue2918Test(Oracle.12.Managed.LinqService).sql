BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PatentAssessment"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "PatentAssessment"
		(
			"PatentId"               Int           NOT NULL,
			"TechnicalReviewersText" VarChar(1000)     NULL,

			CONSTRAINT "PK_PatentAssessment" PRIMARY KEY ("PatentId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2918Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2918Table2"
		(
			"PatentId" Int NOT NULL,
			"UserId"   Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "User"
		(
			"Id"          Int           NOT NULL,
			"DisplayName" VarChar(1000) NOT NULL,

			CONSTRAINT "PK_User" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @userId Int32
SET     @userId = 1

MERGE INTO "PatentAssessment" Target
USING (
	SELECT
		pa."PatentId" as "source_PatentId",
		(
			SELECT
				LISTAGG(a_User."DisplayName", '; ') WITHIN GROUP (ORDER BY a_User."DisplayName")
			FROM
				"Issue2918Table2" patr
					LEFT JOIN "User" a_User ON patr."UserId" = a_User."Id"
			WHERE
				patr."PatentId" = pa."PatentId"
		) as "source_TechnicalReviewersText"
	FROM
		"PatentAssessment" pa
	WHERE
		 EXISTS (
			SELECT
				*
			FROM
				"Issue2918Table2" patr_1
			WHERE
				patr_1."UserId" = :userId AND patr_1."PatentId" = pa."PatentId"
		)
) "Source"
ON (Target."PatentId" = "Source"."source_PatentId")

WHEN MATCHED THEN
UPDATE
SET
	"TechnicalReviewersText" = "Source"."source_TechnicalReviewersText"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2918Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PatentAssessment"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

