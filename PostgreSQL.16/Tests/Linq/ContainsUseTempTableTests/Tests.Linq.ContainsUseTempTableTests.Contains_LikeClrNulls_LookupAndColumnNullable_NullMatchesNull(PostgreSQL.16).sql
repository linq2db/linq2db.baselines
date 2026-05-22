-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_3d9b9c0a93a6"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "T_3d9b9c0a93a6"
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
			"T_3d9b9c0a93a6" t1
		WHERE
			r."Tag" = t1.item OR r."Tag" IS NULL AND t1.item IS NULL
	) OR
	r."Tag" IS NULL
ORDER BY
	r."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_3d9b9c0a93a6"

