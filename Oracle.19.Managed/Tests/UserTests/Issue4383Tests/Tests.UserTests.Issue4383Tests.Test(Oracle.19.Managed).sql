﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINES';
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
		CREATE TABLE PUMPLINES
		(
			LINE_ID Int NOT NULL,

			CONSTRAINT PK_PUMPLINES PRIMARY KEY (LINE_ID)
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
	INTO PUMPLINES (LINE_ID) VALUES (1)
	INTO PUMPLINES (LINE_ID) VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINE_CHAINS';
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
		CREATE TABLE PUMPLINE_CHAINS
		(
			LINE_ID  Int NOT NULL,
			CHAIN_ID Int NOT NULL
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
	INTO PUMPLINE_CHAINS (LINE_ID, CHAIN_ID) VALUES (1,11)
	INTO PUMPLINE_CHAINS (LINE_ID, CHAIN_ID) VALUES (2,22)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CHAINS';
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
		CREATE TABLE CHAINS
		(
			CHAIN_ID Int NOT NULL,

			CONSTRAINT PK_CHAINS PRIMARY KEY (CHAIN_ID)
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
	INTO CHAINS (CHAIN_ID) VALUES (11)
	INTO CHAINS (CHAIN_ID) VALUES (22)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CHAINPOINTS';
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
		CREATE TABLE CHAINPOINTS
		(
			CHAIN_ID Int NOT NULL,

			CONSTRAINT PK_CHAINPOINTS PRIMARY KEY (CHAIN_ID)
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
	INTO CHAINPOINTS (CHAIN_ID) VALUES (11)
	INTO CHAINPOINTS (CHAIN_ID) VALUES (22)
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1.CHAIN_ID
FROM
	(
		SELECT DISTINCT
			a_Chain.CHAIN_ID as "Id",
			t2."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					t1.LINE_ID as "Id"
				FROM
					PUMPLINES t1
			) t2
				INNER JOIN PUMPLINE_CHAINS d ON t2."Id" = d.LINE_ID
				LEFT JOIN CHAINS a_Chain ON d.CHAIN_ID = a_Chain.CHAIN_ID
	) m_1
		INNER JOIN CHAINPOINTS d_1 ON m_1."Id" = d_1.CHAIN_ID

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1.LINE_ID,
	d.LINE_ID,
	d.CHAIN_ID,
	a_Chain.CHAIN_ID,
	a_Chain.CHAIN_ID
FROM
	PUMPLINES m_1
		INNER JOIN PUMPLINE_CHAINS d ON m_1.LINE_ID = d.LINE_ID
		LEFT JOIN CHAINS a_Chain ON d.CHAIN_ID = a_Chain.CHAIN_ID
ORDER BY
	m_1.LINE_ID

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1.LINE_ID,
	t1.LINE_ID
FROM
	PUMPLINES t1
ORDER BY
	t1.LINE_ID

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CHAINPOINTS';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CHAINS';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINE_CHAINS';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINES';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

