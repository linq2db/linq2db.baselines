SELECT e."Name"
FROM views."EventsView" AS e
WHERE e."Name" LIKE 'any%'


-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	e."Name"
FROM
	views."EventsView" e
WHERE
	e."Name" LIKE 'any%' ESCAPE '~'



