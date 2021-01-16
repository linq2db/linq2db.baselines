BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Table404One"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird

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
-- Firebird

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
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Table404One"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird

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
-- Firebird

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
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

