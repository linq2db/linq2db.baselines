BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O1')) THEN
		EXECUTE STATEMENT 'DROP TABLE O1';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE O1
			(
				"DocEntry"    Int                                    NOT NULL,
				"BplId"       Int                                    NOT NULL,
				"ChaveAcesso" VarChar(255) CHARACTER SET UNICODE_FSS,
				"DocStatus"   VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O2')) THEN
		EXECUTE STATEMENT 'DROP TABLE O2';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE O2
			(
				"DocEntry"    Int                                    NOT NULL,
				"BplId"       Int                                    NOT NULL,
				"ChaveAcesso" VarChar(255) CHARACTER SET UNICODE_FSS,
				"DocStatus"   VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O3')) THEN
		EXECUTE STATEMENT 'DROP TABLE O3';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O3')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE O3
			(
				"DocEntry"    Int                                    NOT NULL,
				"BplId"       Int                                    NOT NULL,
				"ChaveAcesso" VarChar(255) CHARACTER SET UNICODE_FSS,
				"DocStatus"   VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"doSap"."DocEntry",
	CASE
		WHEN "doSap"."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O1 "doSap"
UNION
SELECT
	"doSap_1"."DocEntry",
	CASE
		WHEN "doSap_1"."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O2 "doSap_1"
UNION
SELECT
	"doSap_2"."DocEntry",
	CASE
		WHEN "doSap_2"."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O3 "doSap_2"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O3')) THEN
		EXECUTE STATEMENT 'DROP TABLE O3';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O2')) THEN
		EXECUTE STATEMENT 'DROP TABLE O2';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O1')) THEN
		EXECUTE STATEMENT 'DROP TABLE O1';
END

