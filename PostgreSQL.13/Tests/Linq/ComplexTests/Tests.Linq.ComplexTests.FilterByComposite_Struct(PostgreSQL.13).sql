﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UserStruct"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "UserStruct"
(
	city            text     NULL,
	user_name       text     NULL,
	street          text     NULL,
	building_number Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "UserStruct"
(
	city,
	user_name,
	street,
	building_number
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	u.user_name,
	u.city,
	u.street,
	u.building_number
FROM
	"UserStruct" u
WHERE
	u.city = 'Springwood' AND u.street = 'Elm Street' AND
	u.building_number = 13
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UserStruct"

