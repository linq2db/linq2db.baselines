-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_49da129967ac"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_49da129967ac"
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

-- PostgreSQL.18 PostgreSQL

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
			"T_49da129967ac" t1
	) AND
	b."Id" IN (
		SELECT
			t2.item
		FROM
			"T_49da129967ac" t2
	) AND
	a."Id" < b."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_49da129967ac"

