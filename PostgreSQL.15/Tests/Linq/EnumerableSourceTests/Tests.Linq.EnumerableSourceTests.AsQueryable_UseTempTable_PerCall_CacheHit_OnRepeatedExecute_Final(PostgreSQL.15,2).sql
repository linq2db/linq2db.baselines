-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_c9296783d4d2"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_c9296783d4d2"
(
	"Id",
	"Data"
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_c9296783d4d2" t1
ORDER BY
	t1."Id"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_c9296783d4d2"

