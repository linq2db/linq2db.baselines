-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_a083a6525d13"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_a083a6525d13"
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
	"T_a083a6525d13" t1
ORDER BY
	t1."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_a083a6525d13"

