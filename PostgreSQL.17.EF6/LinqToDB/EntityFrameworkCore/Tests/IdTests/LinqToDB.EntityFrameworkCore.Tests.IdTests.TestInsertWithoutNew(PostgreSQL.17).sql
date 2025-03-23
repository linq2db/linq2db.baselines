-- PostgreSQL.15 PostgreSQL
DECLARE @name Text(11) -- String
SET     @name = 'test insert'

INSERT INTO entities
(
	name
)
VALUES
(
	:name
)
RETURNING 
	id



Parameters:
@__id_0='49'

SELECT e.id, e.name
FROM entities AS e
WHERE e.id::bigint = @__id_0
LIMIT 2


