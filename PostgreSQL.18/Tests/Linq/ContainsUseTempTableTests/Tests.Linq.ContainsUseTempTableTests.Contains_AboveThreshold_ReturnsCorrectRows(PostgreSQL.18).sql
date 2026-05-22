-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_f9bd3c3cd18b"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_f9bd3c3cd18b"
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
			"T_f9bd3c3cd18b" t1
	)
ORDER BY
	r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_f9bd3c3cd18b"

