-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_a9b8e667a2d7"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_a9b8e667a2d7"
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

-- PostgreSQL.13 PostgreSQL

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
			"T_a9b8e667a2d7" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_a9b8e667a2d7"

-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_a9b8e667a2d7"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_a9b8e667a2d7"
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

-- PostgreSQL.13 PostgreSQL

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
			"T_a9b8e667a2d7" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_a9b8e667a2d7"

