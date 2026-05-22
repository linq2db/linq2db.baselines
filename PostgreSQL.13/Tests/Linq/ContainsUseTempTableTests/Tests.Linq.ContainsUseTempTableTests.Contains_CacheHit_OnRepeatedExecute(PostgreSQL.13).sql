-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_14f01d90bb68"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_14f01d90bb68"
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
			"T_14f01d90bb68" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_14f01d90bb68"

-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_14f01d90bb68"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_14f01d90bb68"
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
			"T_14f01d90bb68" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_14f01d90bb68"

