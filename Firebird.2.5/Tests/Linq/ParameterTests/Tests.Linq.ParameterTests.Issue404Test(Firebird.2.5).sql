BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table404One"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Table404One"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table404Two"
			(
				"Id"           Int NOT NULL,
				"Usage"        Int NOT NULL,
				"FirstTableId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
SELECT 1,0,1 FROM rdb$database UNION ALL
SELECT 2,0,1 FROM rdb$database UNION ALL
SELECT 3,1,1 FROM rdb$database UNION ALL
SELECT 4,0,2 FROM rdb$database UNION ALL
SELECT 5,1,2 FROM rdb$database UNION ALL
SELECT 6,1,2 FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Values Integer -- Int32
SET     @Values = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Values

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Values Integer -- Int32
SET     @Values = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Values

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table404One"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Table404One"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table404Two"
			(
				"Id"           Int NOT NULL,
				"Usage"        Int NOT NULL,
				"FirstTableId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
SELECT 1,0,1 FROM rdb$database UNION ALL
SELECT 2,0,1 FROM rdb$database UNION ALL
SELECT 3,1,1 FROM rdb$database UNION ALL
SELECT 4,0,2 FROM rdb$database UNION ALL
SELECT 5,1,2 FROM rdb$database UNION ALL
SELECT 6,1,2 FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Values Integer -- Int32
SET     @Values = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Values

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Values Integer -- Int32
SET     @Values = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Values

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

