BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4469Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4469Table"
		(
			"Integer" Int            NOT NULL,
			"Decimal" Decimal(10, 5) NOT NULL,
			"Double"  Float          NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue4469Table" ("Integer", "Decimal", "Double") VALUES (100,100,100D)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @param Int32
SET     @param = 33D
DECLARE @param_1 Decimal
SET     @param_1 = 33D
DECLARE @param_2 BinaryDouble -- Double
SET     @param_2 = 33D

SELECT
	CAST(v."Integer" AS Float) / :param,
	CAST(v."Decimal" AS Float) / :param_1,
	v."Double" / :param_2
FROM
	"Issue4469Table" v
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4469Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

