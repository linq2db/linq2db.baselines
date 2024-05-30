BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "O1"

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

DROP TABLE "O2"

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

DROP TABLE "O3"

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
	"doSap"."DocEntry",
	CASE
		WHEN "doSap"."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	"O1" "doSap"
UNION
SELECT
	"doSap_1"."DocEntry",
	CASE
		WHEN "doSap_1"."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	"O2" "doSap_1"
UNION
SELECT
	"doSap_2"."DocEntry",
	CASE
		WHEN "doSap_2"."DocStatus" = 'O' THEN 'Aberto'
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

