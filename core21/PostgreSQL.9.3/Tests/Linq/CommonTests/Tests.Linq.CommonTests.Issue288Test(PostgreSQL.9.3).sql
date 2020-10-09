BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" IS NULL
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @ID Text(4) -- String
SET     @ID = 'John'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" = :ID
LIMIT :take

