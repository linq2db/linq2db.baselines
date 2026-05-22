-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_a6615bf1e166"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_a6615bf1e166"
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

-- PostgreSQL.15 PostgreSQL

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
			"T_a6615bf1e166" t1
	) AND
	b."Id" IN (
		SELECT
			t2.item
		FROM
			"T_a6615bf1e166" t2
	) AND
	a."Id" < b."Id"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_a6615bf1e166"

