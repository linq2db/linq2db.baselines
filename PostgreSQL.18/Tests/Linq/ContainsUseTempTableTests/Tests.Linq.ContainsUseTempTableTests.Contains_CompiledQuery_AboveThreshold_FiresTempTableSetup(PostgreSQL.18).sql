-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_da465bd912b8"
(
	item Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_da465bd912b8"
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

-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"T_da465bd912b8" t1

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_da465bd912b8"

