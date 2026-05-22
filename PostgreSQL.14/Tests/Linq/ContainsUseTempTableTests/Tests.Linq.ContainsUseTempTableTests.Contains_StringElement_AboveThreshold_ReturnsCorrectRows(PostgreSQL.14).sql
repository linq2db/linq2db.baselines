-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_70ac6aebd92a"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "T_70ac6aebd92a"
(
	item
)
VALUES
('row1'),
('row2'),
('row3'),
('row4'),
('row5'),
('row6'),
('row7'),
('row8'),
('row9'),
('row10')

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Name",
	r."Tag"
FROM
	"ContainsTempTableTestRow" r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"T_70ac6aebd92a" t1
		WHERE
			r."Name" = t1.item OR r."Name" IS NULL AND t1.item IS NULL
	)
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_70ac6aebd92a"

