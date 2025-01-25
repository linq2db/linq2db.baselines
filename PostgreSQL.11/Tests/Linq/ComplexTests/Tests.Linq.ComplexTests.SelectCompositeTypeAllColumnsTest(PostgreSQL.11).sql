BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "User"
(
	city            text     NULL,
	user_name       text     NULL,
	street          text     NULL,
	building_number Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "User"
(
	city,
	user_name,
	street,
	building_number
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.user_name,
	t1.city,
	t1.street,
	t1.building_number
FROM
	"User" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User"

