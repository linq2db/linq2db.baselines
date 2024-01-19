﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(4) -- String
SET     @FirstName = '擊敗奴隸'
DECLARE @LastName Text(9) -- String
SET     @LastName = 'Юникодкин'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "Person"
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

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" = '擊敗奴隸' AND p."LastName" = 'Юникодкин'
LIMIT :take

