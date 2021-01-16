BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "O1"
(
	"DocEntry"    Integer       NOT NULL,
	"BplId"       Integer       NOT NULL,
	"ChaveAcesso" NVarChar(255)     NULL,
	"DocStatus"   NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "O2"
(
	"DocEntry"    Integer       NOT NULL,
	"BplId"       Integer       NOT NULL,
	"ChaveAcesso" NVarChar(255)     NULL,
	"DocStatus"   NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "O3"
(
	"DocEntry"    Integer       NOT NULL,
	"BplId"       Integer       NOT NULL,
	"ChaveAcesso" NVarChar(255)     NULL,
	"DocStatus"   NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
			"O1" "doSap"
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
			"O2" "doSap_1"
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
	"O3" "doSap_2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "O3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "O2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "O1"

