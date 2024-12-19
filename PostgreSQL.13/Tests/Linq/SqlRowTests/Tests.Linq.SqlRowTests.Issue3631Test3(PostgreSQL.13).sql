BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3631Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3631Table"
(
	"Country" text NOT NULL,
	"State"   text NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
('US','AL'),
('US','AZ'),
('US','CA'),
('US','FL'),
('US','IN'),
('US','OH'),
('US','NY'),
('CA','AB'),
('CA','ON')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Country",
	x."State"
FROM
	"Issue3631Table" x
WHERE
	(x."Country", x."State") IN (
		SELECT
			t1."Item1",
			t1."Item2"
		FROM
			(VALUES
				('US','CA'), ('US','NY')
			) t1("Item1", "Item2")
	)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3631Table"

