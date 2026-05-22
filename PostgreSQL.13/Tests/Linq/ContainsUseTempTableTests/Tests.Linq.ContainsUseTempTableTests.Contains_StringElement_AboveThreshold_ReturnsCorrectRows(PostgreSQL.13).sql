-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_ad42d759d0bf"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_ad42d759d0bf"
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

-- PostgreSQL.13 PostgreSQL

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
			"T_ad42d759d0bf" t1
		WHERE
			r."Name" = t1.item OR r."Name" IS NULL AND t1.item IS NULL
	)
ORDER BY
	r."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_ad42d759d0bf"

