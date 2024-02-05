BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINES';
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO PUMPLINES
(
	LINE_ID
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO PUMPLINES
(
	LINE_ID
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINE_CHAINS';
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @LineId Int32
SET     @LineId = 1
DECLARE @ChainId Int32
SET     @ChainId = 11

INSERT INTO PUMPLINE_CHAINS
(
	LINE_ID,
	CHAIN_ID
)
VALUES
(
	:LineId,
	:ChainId
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @LineId Int32
SET     @LineId = 2
DECLARE @ChainId Int32
SET     @ChainId = 22

INSERT INTO PUMPLINE_CHAINS
(
	LINE_ID,
	CHAIN_ID
)
VALUES
(
	:LineId,
	:ChainId
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CHAINS';
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 11

INSERT INTO CHAINS
(
	CHAIN_ID
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 22

INSERT INTO CHAINS
(
	CHAIN_ID
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CHAINPOINTS';
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ElementId Int32
SET     @ElementId = 11

INSERT INTO CHAINPOINTS
(
	CHAIN_ID
)
VALUES
(
	:ElementId
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ElementId Int32
SET     @ElementId = 22

INSERT INTO CHAINPOINTS
(
	CHAIN_ID
)
VALUES
(
	:ElementId
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	key_data_result.CHAIN_ID,
	key_data_result.LINE_ID,
	detail_1.CHAIN_ID
FROM
	(
		SELECT DISTINCT
			a_Chain.CHAIN_ID,
			lw_PumpLineTest2.LINE_ID
		FROM
			PUMPLINES lw_PumpLineTest2
				INNER JOIN PUMPLINE_CHAINS detail ON lw_PumpLineTest2.LINE_ID = detail.LINE_ID
				LEFT JOIN CHAINS a_Chain ON detail.CHAIN_ID = a_Chain.CHAIN_ID
	) key_data_result
		INNER JOIN CHAINPOINTS detail_1 ON key_data_result.CHAIN_ID = detail_1.CHAIN_ID

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	lw_PumpLineTest2.LINE_ID,
	detail.LINE_ID,
	detail.CHAIN_ID,
	a_Chain.CHAIN_ID
FROM
	PUMPLINES lw_PumpLineTest2
		INNER JOIN PUMPLINE_CHAINS detail ON lw_PumpLineTest2.LINE_ID = detail.LINE_ID
		LEFT JOIN CHAINS a_Chain ON detail.CHAIN_ID = a_Chain.CHAIN_ID

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.LINE_ID
FROM
	PUMPLINES t1
ORDER BY
	t1.LINE_ID

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CHAINPOINTS';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CHAINS';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINE_CHAINS';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINES';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

