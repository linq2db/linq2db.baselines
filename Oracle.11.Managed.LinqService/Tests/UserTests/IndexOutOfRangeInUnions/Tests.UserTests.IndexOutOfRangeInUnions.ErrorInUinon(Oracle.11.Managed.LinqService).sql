BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	doSap."DocEntry",
	CASE
		WHEN doSap."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS VarChar(255))
FROM
	O1 doSap
UNION
SELECT
	doSap_1."DocEntry",
	CASE
		WHEN doSap_1."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS VarChar(255))
FROM
	O2 doSap_1
UNION
SELECT
	doSap_2."DocEntry",
	CASE
		WHEN doSap_2."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS VarChar(255))
FROM
	O3 doSap_2

