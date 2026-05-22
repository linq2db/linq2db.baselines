-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_7a20ed83d6c0"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "T_7a20ed83d6c0"
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1.item
FROM
	"T_7a20ed83d6c0" t1
ORDER BY
	t1.item
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_7a20ed83d6c0"

