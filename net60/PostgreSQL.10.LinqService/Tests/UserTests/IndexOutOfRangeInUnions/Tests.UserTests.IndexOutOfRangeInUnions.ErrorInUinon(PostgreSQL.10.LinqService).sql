﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "O1"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "O1"
(
	"DocEntry"    Int  NOT NULL,
	"BplId"       Int  NOT NULL,
	"ChaveAcesso" text     NULL,
	"DocStatus"   text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "O2"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "O2"
(
	"DocEntry"    Int  NOT NULL,
	"BplId"       Int  NOT NULL,
	"ChaveAcesso" text     NULL,
	"DocStatus"   text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "O3"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "O3"
(
	"DocEntry"    Int  NOT NULL,
	"BplId"       Int  NOT NULL,
	"ChaveAcesso" text     NULL,
	"DocStatus"   text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	"doSap"."DocEntry",
	CASE
		WHEN "doSap"."DocStatus" = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	"O1" "doSap"
UNION
SELECT
	"doSap_1"."DocEntry",
	CASE
		WHEN "doSap_1"."DocStatus" = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	"O2" "doSap_1"
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "O3"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "O2"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "O1"

