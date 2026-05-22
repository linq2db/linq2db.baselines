-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_ad7a6cee910a"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "T_ad7a6cee910a"
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
	NOT EXISTS(
		SELECT
			*
		FROM
			"T_ad7a6cee910a" t1
		WHERE
			r."Tag" = t1.item OR r."Tag" IS NULL AND t1.item IS NULL
	) AND
	r."Tag" IS NOT NULL
ORDER BY
	r."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_ad7a6cee910a"

