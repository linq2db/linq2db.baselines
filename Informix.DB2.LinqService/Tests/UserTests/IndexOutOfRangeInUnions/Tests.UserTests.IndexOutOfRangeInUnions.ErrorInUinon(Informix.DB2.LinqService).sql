BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS O1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS O1
(
	DocEntry    Int           NOT NULL,
	BplId       Int           NOT NULL,
	ChaveAcesso NVarChar(255)     NULL,
	DocStatus   NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS O2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS O2
(
	DocEntry    Int           NOT NULL,
	BplId       Int           NOT NULL,
	ChaveAcesso NVarChar(255)     NULL,
	DocStatus   NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS O3

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS O3
(
	DocEntry    Int           NOT NULL,
	BplId       Int           NOT NULL,
	ChaveAcesso NVarChar(255)     NULL,
	DocStatus   NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	doSap.DocEntry,
	CASE
		WHEN doSap.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O1 doSap
UNION
SELECT
	doSap_1.DocEntry,
	CASE
		WHEN doSap_1.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O2 doSap_1
UNION
SELECT
	doSap_2.DocEntry,
	CASE
		WHEN doSap_2.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O3 doSap_2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS O3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS O2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS O1

