-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_66de6280ab27"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_66de6280ab27"
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

-- PostgreSQL.18 PostgreSQL

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
			"T_66de6280ab27" t1
		WHERE
			r."Tag" = t1.item OR r."Tag" IS NULL AND t1.item IS NULL
	) AND
	r."Tag" IS NOT NULL
ORDER BY
	r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_66de6280ab27"

