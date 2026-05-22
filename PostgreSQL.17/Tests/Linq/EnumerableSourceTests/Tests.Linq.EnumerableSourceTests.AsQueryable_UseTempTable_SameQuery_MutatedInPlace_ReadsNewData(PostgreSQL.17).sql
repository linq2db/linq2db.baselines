-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_a148a28ba1cd"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "T_a148a28ba1cd"
(
	"Id",
	"Data"
)
VALUES
(0,'Data 0'),
(1,'Data 1'),
(2,'Data 2'),
(3,'Data 3'),
(4,'Data 4'),
(5,'Data 5'),
(6,'Data 6'),
(7,'Data 7'),
(8,'Data 8'),
(9,'Data 9')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_a148a28ba1cd" t1
ORDER BY
	t1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_a148a28ba1cd"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_a148a28ba1cd"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "T_a148a28ba1cd"
(
	"Id",
	"Data"
)
VALUES
(0,'Data 0'),
(1,'Data 1'),
(2,'Data 2'),
(3,'Data 3'),
(4,'Data 4'),
(5,'Data 5'),
(6,'Data 6'),
(7,'Data 7'),
(8,'Data 8'),
(9,'Data 9'),
(100,'Data 100'),
(101,'Data 101')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_a148a28ba1cd" t1
ORDER BY
	t1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_a148a28ba1cd"

