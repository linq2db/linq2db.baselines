-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_54589b328d1d"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "T_54589b328d1d"
(
	item
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Name",
	r."Tag"
FROM
	"ContainsTempTableTestRow" r
WHERE
	r."Id" IN (
		SELECT
			t1.item
		FROM
			"T_54589b328d1d" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_54589b328d1d"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_54589b328d1d"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "T_54589b328d1d"
(
	item
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Name",
	r."Tag"
FROM
	"ContainsTempTableTestRow" r
WHERE
	r."Id" IN (
		SELECT
			t1.item
		FROM
			"T_54589b328d1d" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_54589b328d1d"

