-- ClickHouse.Driver ClickHouse

SELECT
	doSap.DocEntry,
	CASE
		WHEN doSap.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END as StatusValor,
	toString('Manual/Externo') as DescricaoStatus
FROM
	O1 doSap
UNION DISTINCT
SELECT
	doSap_1.DocEntry as DocEntry,
	CASE
		WHEN doSap_1.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END as StatusValor,
	toString('Manual/Externo') as DescricaoStatus
FROM
	O2 doSap_1
UNION DISTINCT
SELECT
	doSap_2.DocEntry as DocEntry,
	CASE
		WHEN doSap_2.DocStatus = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END as StatusValor,
	toString('Manual/Externo') as DescricaoStatus
FROM
	O3 doSap_2

