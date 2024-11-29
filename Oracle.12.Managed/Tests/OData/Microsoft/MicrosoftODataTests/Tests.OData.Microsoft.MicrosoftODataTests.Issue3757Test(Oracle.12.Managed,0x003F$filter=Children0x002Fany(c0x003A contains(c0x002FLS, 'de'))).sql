BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3757Level1"';
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
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3757Level2"';
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
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @TypedProperty Varchar2(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	m_1.ID,
	m_1."ValS",
	d.ID,
	d."ValB",
	d."ValInt"
FROM
	(
		SELECT DISTINCT
			l1.ID,
			l1."ValS"
		FROM
			"Issue3757Level1" l1
		WHERE
			EXISTS(
				SELECT
					1
				FROM
					"Issue3757Level2" c_1
				WHERE
					l1.ID = c_1."ParentId" AND l1."ValS" LIKE :TypedProperty ESCAPE '~' AND
					l1."ValS" IS NOT NULL
			)
	) m_1
		INNER JOIN "Issue3757Level2" d ON m_1.ID = d."ParentId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @TypedProperty Varchar2(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	it.ID,
	it."ValB",
	it."ValS",
	it."ValInt"
FROM
	"Issue3757Level1" it
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Issue3757Level2" c_1
		WHERE
			it.ID = c_1."ParentId" AND it."ValS" LIKE :TypedProperty ESCAPE '~' AND
			it."ValS" IS NOT NULL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3757Level2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3757Level1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

