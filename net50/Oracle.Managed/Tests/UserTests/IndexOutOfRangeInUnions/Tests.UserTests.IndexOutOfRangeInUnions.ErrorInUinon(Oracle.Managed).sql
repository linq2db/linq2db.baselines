BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE O1
(
	"DocEntry"    Int          NOT NULL,
	"BplId"       Int          NOT NULL,
	"ChaveAcesso" VarChar(255)     NULL,
	"DocStatus"   VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE O2
(
	"DocEntry"    Int          NOT NULL,
	"BplId"       Int          NOT NULL,
	"ChaveAcesso" VarChar(255)     NULL,
	"DocStatus"   VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE O3
(
	"DocEntry"    Int          NOT NULL,
	"BplId"       Int          NOT NULL,
	"ChaveAcesso" VarChar(255)     NULL,
	"DocStatus"   VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."NumeroInterno",
	t1."StatusValor",
	t1."DescricaoStatus"
FROM
	(
		SELECT
			doSap."DocEntry" as "NumeroInterno",
			CASE
				WHEN doSap."DocStatus" = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as "StatusValor",
			'Manual/Externo' as "DescricaoStatus"
		FROM
			O1 doSap
		UNION
		SELECT
			doSap_1."DocEntry" as "NumeroInterno",
			CASE
				WHEN doSap_1."DocStatus" = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as "StatusValor",
			'Manual/Externo' as "DescricaoStatus"
		FROM
			O2 doSap_1
	) t1
UNION
SELECT
	doSap_2."DocEntry",
	CASE
		WHEN doSap_2."DocStatus" = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O3 doSap_2

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE O3

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE O2

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE O1

