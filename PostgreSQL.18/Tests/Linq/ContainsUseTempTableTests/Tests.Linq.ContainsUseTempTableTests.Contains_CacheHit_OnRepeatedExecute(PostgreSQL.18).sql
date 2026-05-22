-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_b9eae9eb833c"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_b9eae9eb833c"
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

-- PostgreSQL.18 PostgreSQL

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
			"T_b9eae9eb833c" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_b9eae9eb833c"

-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_b9eae9eb833c"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_b9eae9eb833c"
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

-- PostgreSQL.18 PostgreSQL

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
			"T_b9eae9eb833c" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_b9eae9eb833c"

