-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_60f0676cb771"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_60f0676cb771"
(
	"Id",
	"Data"
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_60f0676cb771" t1
ORDER BY
	t1."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_60f0676cb771"

