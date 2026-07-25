-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


-- PostgreSQL.9.3 PostgreSQL
UPDATE
	l2dbnh_orgunits
SET
	name = 'Updated'
WHERE
	l2dbnh_orgunits.id = 900


-- PostgreSQL.9.3 PostgreSQL
INSERT INTO l2dbnh_orgunits
(
	id,
	parentid,
	name
)
VALUES
(
	900,
	NULL,
	'First'
)


-- PostgreSQL.9.3 PostgreSQL
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
LIMIT 2


-- PostgreSQL.9.3 PostgreSQL
UPDATE
	l2dbnh_orgunits
SET
	name = 'Updated'
WHERE
	l2dbnh_orgunits.id = 900


-- PostgreSQL.9.3 PostgreSQL
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
LIMIT 2


-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


