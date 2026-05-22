-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_8f4ea09d4831"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_8f4ea09d4831"
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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1.item
FROM
	"T_8f4ea09d4831" t1
ORDER BY
	t1.item
LIMIT 1

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_8f4ea09d4831"

