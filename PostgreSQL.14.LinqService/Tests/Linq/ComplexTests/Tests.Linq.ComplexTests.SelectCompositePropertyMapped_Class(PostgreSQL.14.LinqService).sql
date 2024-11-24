BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "User"
(
	city            text     NULL,
	user_name       text     NULL,
	street          text     NULL,
	building_number Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Residence_City Text(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name Text(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street Text(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Integer -- Int32
SET     @Residence_Building = 13

INSERT INTO "User"
(
	city,
	user_name,
	street,
	building_number
)
VALUES
(
	:Residence_City,
	:Name,
	:Residence_Street,
	:Residence_Building
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	"User" u
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User"

