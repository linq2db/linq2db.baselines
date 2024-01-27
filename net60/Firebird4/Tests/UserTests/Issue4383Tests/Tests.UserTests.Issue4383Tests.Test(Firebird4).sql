BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PUMPLINES')) THEN
		EXECUTE STATEMENT 'DROP TABLE PUMPLINES';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PUMPLINES')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE PUMPLINES
			(
				LINE_ID Int NOT NULL,

				CONSTRAINT PK_PUMPLINES PRIMARY KEY (LINE_ID)
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO PUMPLINES
(
	LINE_ID
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PUMPLINE_CHAINS')) THEN
		EXECUTE STATEMENT 'DROP TABLE PUMPLINE_CHAINS';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PUMPLINE_CHAINS')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE PUMPLINE_CHAINS
			(
				LINE_ID  Int NOT NULL,
				CHAIN_ID Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO PUMPLINE_CHAINS
(
	LINE_ID,
	CHAIN_ID
)
SELECT 1,11 FROM rdb$database UNION ALL
SELECT 2,22 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CHAINS')) THEN
		EXECUTE STATEMENT 'DROP TABLE CHAINS';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CHAINS')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE CHAINS
			(
				CHAIN_ID Int NOT NULL,

				CONSTRAINT PK_CHAINS PRIMARY KEY (CHAIN_ID)
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO CHAINS
(
	CHAIN_ID
)
SELECT 11 FROM rdb$database UNION ALL
SELECT 22 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CHAINPOINTS')) THEN
		EXECUTE STATEMENT 'DROP TABLE CHAINPOINTS';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CHAINPOINTS')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE CHAINPOINTS
			(
				CHAIN_ID Int NOT NULL,

				CONSTRAINT PK_CHAINPOINTS PRIMARY KEY (CHAIN_ID)
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO CHAINPOINTS
(
	CHAIN_ID
)
SELECT 11 FROM rdb$database UNION ALL
SELECT 22 FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird4 Firebird

SELECT
	"key_data_result".CHAIN_ID,
	"key_data_result".LINE_ID,
	"detail_1".CHAIN_ID
FROM
	(
		SELECT DISTINCT
			"a_Chain".CHAIN_ID,
			"lw_PumpLineTest2".LINE_ID
		FROM
			PUMPLINES "lw_PumpLineTest2"
				INNER JOIN PUMPLINE_CHAINS "detail" ON "lw_PumpLineTest2".LINE_ID = "detail".LINE_ID
				LEFT JOIN CHAINS "a_Chain" ON "detail".CHAIN_ID = "a_Chain".CHAIN_ID
	) "key_data_result"
		INNER JOIN CHAINPOINTS "detail_1" ON "key_data_result".CHAIN_ID = "detail_1".CHAIN_ID

BeforeExecute
-- Firebird4 Firebird

SELECT
	"lw_PumpLineTest2".LINE_ID,
	"detail".LINE_ID,
	"detail".CHAIN_ID,
	"a_Chain".CHAIN_ID
FROM
	PUMPLINES "lw_PumpLineTest2"
		INNER JOIN PUMPLINE_CHAINS "detail" ON "lw_PumpLineTest2".LINE_ID = "detail".LINE_ID
		LEFT JOIN CHAINS "a_Chain" ON "detail".CHAIN_ID = "a_Chain".CHAIN_ID

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1".LINE_ID
FROM
	PUMPLINES "t1"
ORDER BY
	"t1".LINE_ID

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CHAINPOINTS')) THEN
		EXECUTE STATEMENT 'DROP TABLE CHAINPOINTS';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CHAINS')) THEN
		EXECUTE STATEMENT 'DROP TABLE CHAINS';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PUMPLINE_CHAINS')) THEN
		EXECUTE STATEMENT 'DROP TABLE PUMPLINE_CHAINS';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PUMPLINES')) THEN
		EXECUTE STATEMENT 'DROP TABLE PUMPLINES';
END

