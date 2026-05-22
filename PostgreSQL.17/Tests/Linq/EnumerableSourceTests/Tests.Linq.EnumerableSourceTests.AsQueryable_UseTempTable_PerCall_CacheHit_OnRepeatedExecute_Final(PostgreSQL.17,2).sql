-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_886ebfa8c37c"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "T_886ebfa8c37c"
(
	"Id",
	"Data"
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_886ebfa8c37c" t1
ORDER BY
	t1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_886ebfa8c37c"

