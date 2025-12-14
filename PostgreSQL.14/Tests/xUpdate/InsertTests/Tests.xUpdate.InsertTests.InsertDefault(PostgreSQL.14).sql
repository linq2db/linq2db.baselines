-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'InsertDefault'

