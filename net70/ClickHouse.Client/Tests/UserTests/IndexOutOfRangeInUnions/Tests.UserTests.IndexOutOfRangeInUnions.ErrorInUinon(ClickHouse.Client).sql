BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS O1

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS O1
(
	DocEntry    Int32,
	BplId       Int32,
	ChaveAcesso Nullable(String),
	DocStatus   Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS O2

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS O2
(
	DocEntry    Int32,
	BplId       Int32,
	ChaveAcesso Nullable(String),
	DocStatus   Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS O3

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS O3
(
	DocEntry    Int32,
	BplId       Int32,
	ChaveAcesso Nullable(String),
	DocStatus   Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	doSap.DocEntry,
	CASE
		WHEN doSap.DocStatus = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O1 doSap
UNION DISTINCT
SELECT
	doSap_1.DocEntry,
	CASE
		WHEN doSap_1.DocStatus = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O2 doSap_1
UNION DISTINCT
SELECT
	doSap_2.DocEntry,
	CASE
		WHEN doSap_2.DocStatus = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	O3 doSap_2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS O3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS O2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS O1

