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
DECLARE @Integer_1 Int32
SET     @Integer_1 = 100
DECLARE @Decimal_1 Decimal(3, 0)
SET     @Decimal_1 = 100
DECLARE @Double BinaryDouble -- Double
SET     @Double = 100D

INSERT INTO "Issue4469Table"
(
	"Integer",
	"Decimal",
	"Double"
)
VALUES
(
	:Integer_1,
	:Decimal_1,
	:Double
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @param Int32
SET     @param = 33

SELECT
	v."Integer" / :param,
	v."Decimal" / :param,
	v."Double" / :param
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

