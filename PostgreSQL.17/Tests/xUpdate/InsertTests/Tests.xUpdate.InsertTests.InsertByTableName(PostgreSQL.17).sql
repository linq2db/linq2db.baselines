-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @FirstName Text(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "xxPerson"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @FirstName Text(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "xxPerson"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @FirstName Text(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "xxPerson"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"xxPerson" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"xxPerson" p
WHERE
	p."FirstName" = 'Steven' AND p."LastName" = 'King' AND
	p."Gender" = 'M'

