﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Data"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Data"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Data"
(
	"Id"
)
VALUES
(1),
(2),
(3)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SubData1"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SubData1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SubData1"
(
	"Id"
)
VALUES
(2),
(3)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SubData2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SubData2"
(
	"Id"     Int  NOT NULL,
	"Reason" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
VALUES
(3,'прст1'),
(3,'прст2')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	i."Id",
	CASE
		WHEN "a_SubData"."Id" IS NULL THEN NULL
		ELSE (
			SELECT
				"a_SubDatas"."Reason"
			FROM
				"SubData2" "a_SubDatas"
			WHERE
				"a_SubData"."Id" = "a_SubDatas"."Id"
			LIMIT 1
		)
	END
FROM
	"Data" i
		LEFT JOIN "SubData1" "a_SubData" ON i."Id" = "a_SubData"."Id"
ORDER BY
	i."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SubData2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SubData1"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Data"

