-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_ded80e0c235e"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_ded80e0c235e"
(
	"Id",
	"Data"
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_ded80e0c235e" t1
ORDER BY
	t1."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_ded80e0c235e"

