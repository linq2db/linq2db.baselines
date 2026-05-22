-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_d2477e3243c4"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_d2477e3243c4"
(
	item
)
VALUES
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
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49)

-- PostgreSQL.13 PostgreSQL

SELECT
	t1.item
FROM
	"T_d2477e3243c4" t1
ORDER BY
	t1.item
LIMIT 1

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_d2477e3243c4"

