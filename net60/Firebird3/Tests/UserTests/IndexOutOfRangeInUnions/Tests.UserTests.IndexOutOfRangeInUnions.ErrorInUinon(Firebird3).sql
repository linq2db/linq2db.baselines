BeforeExecute
-- Firebird3 Firebird

CREATE TABLE O1
(
	"DocEntry"    Int                                    NOT NULL,
	"BplId"       Int                                    NOT NULL,
	"ChaveAcesso" VarChar(255) CHARACTER SET UNICODE_FSS,
	"DocStatus"   VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE O2
(
	"DocEntry"    Int                                    NOT NULL,
	"BplId"       Int                                    NOT NULL,
	"ChaveAcesso" VarChar(255) CHARACTER SET UNICODE_FSS,
	"DocStatus"   VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE O3
(
	"DocEntry"    Int                                    NOT NULL,
	"BplId"       Int                                    NOT NULL,
	"ChaveAcesso" VarChar(255) CHARACTER SET UNICODE_FSS,
	"DocStatus"   VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."NumeroInterno",
	"t1"."StatusValor",
	"t1"."DescricaoStatus"
FROM
	(
		SELECT
			"doSap"."DocEntry" as "NumeroInterno",
			CASE
				WHEN "doSap"."DocStatus" = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as "StatusValor",
			'Manual/Externo' as "DescricaoStatus"
		FROM
			O1 "doSap"
		UNION
		SELECT
			"doSap_1"."DocEntry" as "NumeroInterno",
			CASE
				WHEN "doSap_1"."DocStatus" = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as "StatusValor",
			'Manual/Externo' as "DescricaoStatus"
		FROM
			O2 "doSap_1"
	) "t1"
UNION
SELECT
	"doSap_2"."DocEntry",
	CASE
		WHEN "doSap_2"."DocStatus" = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O3 "doSap_2"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O3')) THEN
		EXECUTE STATEMENT 'DROP TABLE O3';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O2')) THEN
		EXECUTE STATEMENT 'DROP TABLE O2';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'O1')) THEN
		EXECUTE STATEMENT 'DROP TABLE O1';
END

