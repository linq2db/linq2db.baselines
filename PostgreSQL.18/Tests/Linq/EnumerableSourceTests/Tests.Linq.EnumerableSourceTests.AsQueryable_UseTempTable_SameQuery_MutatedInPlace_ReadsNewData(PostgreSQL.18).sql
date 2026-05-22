-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_76b39db830a8"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_76b39db830a8"
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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_76b39db830a8" t1
ORDER BY
	t1."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_76b39db830a8"

-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_76b39db830a8"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_76b39db830a8"
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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_76b39db830a8" t1
ORDER BY
	t1."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_76b39db830a8"

