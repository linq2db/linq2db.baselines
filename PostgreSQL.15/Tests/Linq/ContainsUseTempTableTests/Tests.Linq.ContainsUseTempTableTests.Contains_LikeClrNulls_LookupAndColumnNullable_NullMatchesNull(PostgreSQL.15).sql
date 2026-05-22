-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_c0ccb92646bb"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_c0ccb92646bb"
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

-- PostgreSQL.15 PostgreSQL

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
			"T_c0ccb92646bb" t1
		WHERE
			r."Tag" = t1.item OR r."Tag" IS NULL AND t1.item IS NULL
	) OR
	r."Tag" IS NULL
ORDER BY
	r."Id"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_c0ccb92646bb"

