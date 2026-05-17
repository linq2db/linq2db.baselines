SELECT e."Name"
FROM views."EventsView" AS e
WHERE e."Name" LIKE 'any%'


-- PostgreSQL.18 PostgreSQL

SELECT
	e."Name"
FROM
	views."EventsView" e
WHERE
	e."Name" LIKE 'any%' ESCAPE '~'



