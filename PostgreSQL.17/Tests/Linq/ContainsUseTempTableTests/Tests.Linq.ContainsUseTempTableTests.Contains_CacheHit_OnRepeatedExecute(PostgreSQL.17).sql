-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_af98f05eb2f0"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "T_af98f05eb2f0"
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
			"T_af98f05eb2f0" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_af98f05eb2f0"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_af98f05eb2f0"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "T_af98f05eb2f0"
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
			"T_af98f05eb2f0" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_af98f05eb2f0"

