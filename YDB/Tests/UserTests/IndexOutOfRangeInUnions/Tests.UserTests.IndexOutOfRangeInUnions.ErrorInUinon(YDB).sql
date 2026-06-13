-- YDB Ydb

SELECT
	doSap.DocEntry as NumeroInterno,
	CASE
		WHEN doSap.DocStatus = 'O'u THEN 'Aberto'u
		ELSE 'Fechado'u
	END as StatusValor,
	Unwrap(CAST('Manual/Externo'u AS Text)) as DescricaoStatus
FROM
	O1 doSap
UNION
SELECT
	doSap_1.DocEntry as NumeroInterno,
	CASE
		WHEN doSap_1.DocStatus = 'O'u THEN 'Aberto'u
		ELSE 'Fechado'u
	END as StatusValor,
	Unwrap(CAST('Manual/Externo'u AS Text)) as DescricaoStatus
FROM
	O2 doSap_1
UNION
SELECT
	doSap_2.DocEntry as NumeroInterno,
	CASE
		WHEN doSap_2.DocStatus = 'O'u THEN 'Aberto'u
		ELSE 'Fechado'u
	END as StatusValor,
	Unwrap(CAST('Manual/Externo'u AS Text)) as DescricaoStatus
FROM
	O3 doSap_2

