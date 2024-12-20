﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table1"
			(
				ID  Int NOT NULL,
				ID2 Int,

				CONSTRAINT "PK_Table1" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Table1"
(
	ID,
	ID2
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table2"
			(
				ID  Int NOT NULL,
				ID3 Int,

				CONSTRAINT "PK_Table2" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Table2"
(
	ID,
	ID3
)
SELECT 1,1 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table3"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table3')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table3"
			(
				ID Int NOT NULL,

				CONSTRAINT "PK_Table3" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Table3"
(
	ID
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table4')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table4"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table4')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table4"
			(
				ID  Int NOT NULL,
				ID3 Int,

				CONSTRAINT "PK_Table4" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Table4"
(
	ID,
	ID3
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,NULL FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1".ID,
	"d".ID,
	"d".ID3
FROM
	(
		SELECT DISTINCT
			"a_Table3".ID
		FROM
			"Table1" "r"
				LEFT JOIN "Table2" "a_Table2" ON "r".ID2 = "a_Table2".ID
				LEFT JOIN "Table3" "a_Table3" ON "a_Table2".ID3 = "a_Table3".ID
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Table4" "id"
				WHERE
					"a_Table3".ID = "id".ID3 AND "id".ID = "r".ID
			)
	) "m_1"
		INNER JOIN "Table4" "d" ON "m_1".ID = "d".ID3 OR "m_1".ID IS NULL AND "d".ID3 IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r".ID2,
	"a_Table2".ID,
	"a_Table2".ID3,
	"a_Table3".ID
FROM
	"Table1" "r"
		LEFT JOIN "Table2" "a_Table2" ON "r".ID2 = "a_Table2".ID
		LEFT JOIN "Table3" "a_Table3" ON "a_Table2".ID3 = "a_Table3".ID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Table4" "id"
		WHERE
			"a_Table3".ID = "id".ID3 AND "id".ID = "r".ID
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."cond",
	"d".ID,
	"d".ID3
FROM
	(
		SELECT DISTINCT
			"a_Table3".ID as "cond"
		FROM
			"Table1" "t1"
				LEFT JOIN "Table2" "a_Table2" ON "t1".ID2 = "a_Table2".ID
				LEFT JOIN "Table3" "a_Table3" ON "a_Table2".ID3 = "a_Table3".ID
	) "m_1"
		INNER JOIN "Table4" "d" ON "m_1"."cond" = "d".ID3 OR "m_1"."cond" IS NULL AND "d".ID3 IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1".ID2,
	"a_Table2".ID,
	"a_Table2".ID3,
	"a_Table3".ID
FROM
	"Table1" "t1"
		LEFT JOIN "Table2" "a_Table2" ON "t1".ID2 = "a_Table2".ID
		LEFT JOIN "Table3" "a_Table3" ON "a_Table2".ID3 = "a_Table3".ID

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table4')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table4"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table3"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1"';
END

