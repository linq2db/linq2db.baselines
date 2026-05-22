-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_fbceb5397def"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_fbceb5397def"
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

-- PostgreSQL.15 PostgreSQL

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
			"T_fbceb5397def" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_fbceb5397def"

-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_fbceb5397def"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_fbceb5397def"
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

-- PostgreSQL.15 PostgreSQL

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
			"T_fbceb5397def" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_fbceb5397def"

