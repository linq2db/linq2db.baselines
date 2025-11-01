-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'InsertDefault'

