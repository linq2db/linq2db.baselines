Parameters:
@p0='test insert ef' (Nullable = false)

INSERT INTO entities (name)
VALUES (@p0)
RETURNING id;


SELECT e.id, e.name
FROM entities AS e
LIMIT 2


