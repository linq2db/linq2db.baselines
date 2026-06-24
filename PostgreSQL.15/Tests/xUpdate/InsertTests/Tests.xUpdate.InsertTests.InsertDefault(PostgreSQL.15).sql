-- PostgreSQL.15 PostgreSQL13

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

-- PostgreSQL.15 PostgreSQL13

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'InsertDefault'

