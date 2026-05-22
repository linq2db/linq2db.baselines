-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_933874bba17f"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_933874bba17f"
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
	EXISTS(
		SELECT
			*
		FROM
			"T_933874bba17f" t1
		WHERE
			r."Tag" = t1.item OR r."Tag" IS NULL AND t1.item IS NULL
	) OR
	r."Tag" IS NULL
ORDER BY
	r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_933874bba17f"

