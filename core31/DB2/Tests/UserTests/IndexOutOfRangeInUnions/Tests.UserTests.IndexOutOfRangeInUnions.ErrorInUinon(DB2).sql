BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE O1
(
	"DocEntry"    Int           NOT NULL,
	"BplId"       Int           NOT NULL,
	"ChaveAcesso" NVarChar(255)     NULL,
	"DocStatus"   NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE O2
(
	"DocEntry"    Int           NOT NULL,
	"BplId"       Int           NOT NULL,
	"ChaveAcesso" NVarChar(255)     NULL,
	"DocStatus"   NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE O3
(
	"DocEntry"    Int           NOT NULL,
	"BplId"       Int           NOT NULL,
	"ChaveAcesso" NVarChar(255)     NULL,
	"DocStatus"   NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE O3';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE O2';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE O1';
END

