-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_01be06c3d9e3"
(
	item text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_01be06c3d9e3"
(
	item
)
VALUES
('tag1'),
('tag2'),
('tag4'),
('tag5'),
('tag7'),
('tag8'),
('tag10'),
('tag11'),
('tag13'),
('tag14'),
('tag16'),
('tag17'),
('tag19'),
('tag20'),
('tag22'),
('tag23'),
('tag25'),
('tag26'),
('tag28'),
('tag29')

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
			"T_01be06c3d9e3" t1
		WHERE
			r."Tag" = t1.item OR r."Tag" IS NULL AND t1.item IS NULL
	)
ORDER BY
	r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_01be06c3d9e3"

