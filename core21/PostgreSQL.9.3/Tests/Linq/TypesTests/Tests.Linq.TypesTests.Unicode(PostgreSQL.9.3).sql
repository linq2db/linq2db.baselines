BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'擊敗奴隸',
	'Юникодкин',
	'M'
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

