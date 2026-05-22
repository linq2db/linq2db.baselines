-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_24eaabf86a8c"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_24eaabf86a8c"
(
	"Id",
	"Data"
)
VALUES
(0,'Data 0'),
(1,'Data 1'),
(2,'Data 2'),
(3,'Data 3'),
(4,'Data 4'),
(5,'Data 5'),
(6,'Data 6'),
(7,'Data 7'),
(8,'Data 8'),
(9,'Data 9')

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_24eaabf86a8c"
(
	"Id",
	"Data"
)
VALUES
(10,'Data 10'),
(11,'Data 11'),
(12,'Data 12'),
(13,'Data 13'),
(14,'Data 14'),
(15,'Data 15'),
(16,'Data 16'),
(17,'Data 17'),
(18,'Data 18'),
(19,'Data 19')

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	"T_24eaabf86a8c" t1
ORDER BY
	t1."Id"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_24eaabf86a8c"

