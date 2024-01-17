BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @name Text(4) -- String
SET     @name = 'test'
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 2

SELECT
	x."PersonID"
FROM
	"Person" x
WHERE
	(x."PersonID" = :id AND x."LastName" <> :name OR x."FirstName" <> :name AND x."PersonID" = :id_1)
GROUP BY
	x."PersonID"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @LastName Text(4) -- String
SET     @LastName = 'test'
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 1

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	(x."PersonID" = :ID AND x."LastName" <> :LastName OR x."FirstName" <> :LastName AND x."PersonID" = :p) AND
	x."PersonID" = :ID_1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @LastName Text(4) -- String
SET     @LastName = 'test'
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 2

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	(x."PersonID" = :ID AND x."LastName" <> :LastName OR x."FirstName" <> :LastName AND x."PersonID" = :p) AND
	x."PersonID" = :ID_1

