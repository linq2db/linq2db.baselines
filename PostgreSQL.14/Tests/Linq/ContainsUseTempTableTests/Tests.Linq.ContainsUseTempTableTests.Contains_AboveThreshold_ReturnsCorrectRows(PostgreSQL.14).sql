-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_219cafbfd4a7"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "T_219cafbfd4a7"
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
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109)

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
			"T_219cafbfd4a7" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_219cafbfd4a7"

