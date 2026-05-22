-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_d1010e11f66c"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "T_d1010e11f66c"
(
	item
)
VALUES
('tag1'),
('tag2'),
('tag4'),
('tag5'),
('tag7'),
('tag8')

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
			"T_d1010e11f66c" t1
		WHERE
			r."Tag" = t1.item OR r."Tag" IS NULL AND t1.item IS NULL
	) OR
	r."Tag" IS NULL
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_d1010e11f66c"

