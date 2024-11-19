Parameters:
@__id_0='50'

SELECT e.id, e.name
FROM entities AS e
WHERE e.id::bigint = @__id_0
LIMIT 2


