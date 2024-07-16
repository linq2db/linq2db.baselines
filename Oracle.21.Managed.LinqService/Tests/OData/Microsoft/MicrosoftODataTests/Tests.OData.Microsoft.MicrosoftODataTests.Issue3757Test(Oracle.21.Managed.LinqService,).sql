BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3757Level1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3757Level1"
		(
			ID       Int          NOT NULL,
			"ValS"   VarChar(255)     NULL,
			"ValB"   Char(1)          NULL,
			"ValInt" Int              NULL,

			CONSTRAINT "PK_Issue3757Level1" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3757Level2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3757Level2"
		(
			ID         Int          NOT NULL,
			"ParentId" Int          NOT NULL,
			"ValS"     VarChar(255)     NULL,
			"ValB"     Char(1)          NULL,
			"ValInt"   Int              NULL,

			CONSTRAINT "PK_Issue3757Level2" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1.ID,
	m_1."ValS",
	d.ID,
	d."ValB",
	d."ValInt"
FROM
	"Issue3757Level1" m_1
		INNER JOIN "Issue3757Level2" d ON m_1.ID = d."ParentId"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	l1.ID,
	l1."ValB",
	l1."ValS",
	l1."ValInt"
FROM
	"Issue3757Level1" l1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3757Level2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3757Level1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

