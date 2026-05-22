-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_ef54b98e5e1d"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_ef54b98e5e1d"
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
(10),
(11),
(12),
(13),
(14),
(15)

-- PostgreSQL.13 PostgreSQL

SELECT
	a."Id",
	b."Id"
FROM
	"ContainsTempTableTestRow" a,
	"ContainsTempTableTestRow" b
WHERE
	a."Id" IN (
		SELECT
			t1.item
		FROM
			"T_ef54b98e5e1d" t1
	) AND
	b."Id" IN (
		SELECT
			t2.item
		FROM
			"T_ef54b98e5e1d" t2
	) AND
	a."Id" < b."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_ef54b98e5e1d"

