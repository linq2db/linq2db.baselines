BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Person"
(
	"FirstName",
	"MiddleName",
	"LastName",
	"Gender"
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" = 'InsertDefault'

