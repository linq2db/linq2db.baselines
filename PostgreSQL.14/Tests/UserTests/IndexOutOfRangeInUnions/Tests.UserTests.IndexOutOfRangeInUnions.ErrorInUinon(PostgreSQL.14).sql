-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	"doSap"."DocEntry",
	CASE
		WHEN "doSap"."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'::text
FROM
	"O1" "doSap"
UNION
SELECT
	"doSap_1"."DocEntry",
	CASE
		WHEN "doSap_1"."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'::text
FROM
	"O2" "doSap_1"
UNION
SELECT
	"doSap_2"."DocEntry",
	CASE
		WHEN "doSap_2"."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'::text
FROM
	"O3" "doSap_2"

