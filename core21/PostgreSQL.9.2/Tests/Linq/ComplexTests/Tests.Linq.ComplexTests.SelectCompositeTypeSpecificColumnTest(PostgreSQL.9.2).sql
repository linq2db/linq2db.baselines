BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "User"
(
	city            text     NULL,
	user_name       text     NULL,
	street          text     NULL,
	building_number Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	u.city
FROM
	"User" u

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	u.street
FROM
	"User" u

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "User"

