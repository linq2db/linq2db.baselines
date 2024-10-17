BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS O1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS O1
(
	DocEntry    Int32,
	BplId       Int32,
	ChaveAcesso Nullable(String),
	DocStatus   Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS O2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS O2
(
	DocEntry    Int32,
	BplId       Int32,
	ChaveAcesso Nullable(String),
	DocStatus   Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS O3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS O3
(
	DocEntry    Int32,
	BplId       Int32,
	ChaveAcesso Nullable(String),
	DocStatus   Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	doSap.DocEntry as NumeroInterno,
	CASE
		WHEN doSap.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END as StatusValor,
	toString('Manual/Externo') as DescricaoStatus
FROM
	O1 doSap
UNION DISTINCT
SELECT
	doSap_1.DocEntry as NumeroInterno,
	CASE
		WHEN doSap_1.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END as StatusValor,
	toString('Manual/Externo') as DescricaoStatus
FROM
	O2 doSap_1
UNION DISTINCT
SELECT
	doSap_2.DocEntry as NumeroInterno,
	CASE
		WHEN doSap_2.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END as StatusValor,
	toString('Manual/Externo') as DescricaoStatus
FROM
	O3 doSap_2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS O3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS O2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS O1

