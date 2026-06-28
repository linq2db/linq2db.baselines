SELECT e."Name"
FROM views."EventsView" AS e
WHERE e."Name" LIKE 'any%'


-- PostgreSQL.15 PostgreSQL13

SELECT
	e."Name"
FROM
	views."EventsView" e
WHERE
	e."Name" LIKE 'any%' ESCAPE '~'



