-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_d40530e4fa7d"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_d40530e4fa7d"
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

-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"T_d40530e4fa7d" t1

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_d40530e4fa7d"

