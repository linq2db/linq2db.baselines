﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINES';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE PUMPLINES
		(
			LINE_ID Int NOT NULL,

			CONSTRAINT PK_PUMPLINES PRIMARY KEY (LINE_ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO PUMPLINES
(
	LINE_ID
)
VALUES
(1),
(2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINE_CHAINS';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE PUMPLINE_CHAINS
		(
			LINE_ID  Int NOT NULL,
			CHAIN_ID Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO PUMPLINE_CHAINS
(
	LINE_ID,
	CHAIN_ID
)
VALUES
(1,11),
(2,22)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE CHAINS';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE CHAINS
		(
			CHAIN_ID Int NOT NULL,

			CONSTRAINT PK_CHAINS PRIMARY KEY (CHAIN_ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO CHAINS
(
	CHAIN_ID
)
VALUES
(11),
(22)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE CHAINPOINTS';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE CHAINPOINTS
		(
			CHAIN_ID Int NOT NULL,

			CONSTRAINT PK_CHAINPOINTS PRIMARY KEY (CHAIN_ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO CHAINPOINTS
(
	CHAIN_ID
)
VALUES
(11),
(22)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"m_1"."Id_1",
	"d_1".CHAIN_ID
FROM
	(
		SELECT DISTINCT
			"a_Chain".CHAIN_ID as "Id",
			"t2"."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					"t1".LINE_ID as "Id"
				FROM
					PUMPLINES "t1"
			) "t2"
				INNER JOIN PUMPLINE_CHAINS "d" ON "t2"."Id" = "d".LINE_ID
				LEFT JOIN CHAINS "a_Chain" ON "d".CHAIN_ID = "a_Chain".CHAIN_ID
	) "m_1"
		INNER JOIN CHAINPOINTS "d_1" ON "m_1"."Id" = "d_1".CHAIN_ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1".LINE_ID,
	"d".LINE_ID,
	"d".CHAIN_ID,
	"a_Chain".CHAIN_ID,
	"a_Chain".CHAIN_ID
FROM
	PUMPLINES "m_1"
		INNER JOIN PUMPLINE_CHAINS "d" ON "m_1".LINE_ID = "d".LINE_ID
		LEFT JOIN CHAINS "a_Chain" ON "d".CHAIN_ID = "a_Chain".CHAIN_ID
ORDER BY
	"m_1".LINE_ID

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".LINE_ID,
	"t1".LINE_ID
FROM
	PUMPLINES "t1"
ORDER BY
	"t1".LINE_ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE CHAINPOINTS';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE CHAINS';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINE_CHAINS';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE PUMPLINES';
END

