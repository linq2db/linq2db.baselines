-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_3a2140c00c91"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_3a2140c00c91"
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
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"T_3a2140c00c91" t1

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_3a2140c00c91"

