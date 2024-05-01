﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Table1"
		(
			ID  Int NOT NULL,
			ID2 Int     NULL,

			CONSTRAINT "PK_Table1" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Table1" (ID, ID2) VALUES (1,1)
	INTO "Table1" (ID, ID2) VALUES (2,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Table2"
		(
			ID  Int NOT NULL,
			ID3 Int     NULL,

			CONSTRAINT "PK_Table2" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Table2" (ID, ID3) VALUES (1,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Table3"
		(
			ID Int NOT NULL,

			CONSTRAINT "PK_Table3" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Table3" (ID) VALUES (1)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table4"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Table4"
		(
			ID  Int NOT NULL,
			ID3 Int     NULL,

			CONSTRAINT "PK_Table4" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Table4" (ID, ID3) VALUES (1,1)
	INTO "Table4" (ID, ID3) VALUES (2,NULL)
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1.ID,
	d.ID,
	d.ID3
FROM
	(
		SELECT DISTINCT
			a_Table3.ID
		FROM
			"Table1" r
				LEFT JOIN "Table2" a_Table2 ON r.ID2 = a_Table2.ID
				LEFT JOIN "Table3" a_Table3 ON a_Table2.ID3 = a_Table3.ID
				LEFT JOIN "Table3" a_Table3_1 ON a_Table2.ID3 = a_Table3_1.ID
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Table4" id
				WHERE
					a_Table3_1.ID IS NOT NULL AND a_Table3_1.ID = id.ID3 AND
					id.ID = r.ID
			)
	) m_1
		INNER JOIN "Table4" d ON (m_1.ID = d.ID3 OR m_1.ID IS NULL AND d.ID3 IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r.ID2,
	a_Table2.ID,
	a_Table2.ID3,
	a_Table3.ID
FROM
	"Table1" r
		LEFT JOIN "Table2" a_Table2 ON r.ID2 = a_Table2.ID
		LEFT JOIN "Table3" a_Table3 ON a_Table2.ID3 = a_Table3.ID
		LEFT JOIN "Table3" a_Table3_1 ON a_Table2.ID3 = a_Table3_1.ID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Table4" id
		WHERE
			a_Table3_1.ID IS NOT NULL AND a_Table3_1.ID = id.ID3 AND
			id.ID = r.ID
	)

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1.ID,
	d.ID,
	d.ID3
FROM
	(
		SELECT DISTINCT
			a_Table3.ID
		FROM
			"Table1" t1
				LEFT JOIN "Table2" a_Table2 ON t1.ID2 = a_Table2.ID
				LEFT JOIN "Table3" a_Table3 ON a_Table2.ID3 = a_Table3.ID
	) m_1
		INNER JOIN "Table4" d ON (m_1.ID = d.ID3 OR m_1.ID IS NULL AND d.ID3 IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1.ID2,
	a_Table2.ID,
	a_Table2.ID3,
	a_Table3.ID
FROM
	"Table1" t1
		LEFT JOIN "Table2" a_Table2 ON t1.ID2 = a_Table2.ID
		LEFT JOIN "Table3" a_Table3 ON a_Table2.ID3 = a_Table3.ID

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table4"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

