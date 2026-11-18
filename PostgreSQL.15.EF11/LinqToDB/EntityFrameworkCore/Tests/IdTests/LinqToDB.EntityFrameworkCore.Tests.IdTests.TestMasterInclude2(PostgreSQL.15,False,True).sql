SELECT d.id, d.master_id, d.name, e.id, e.name
FROM details AS d
INNER JOIN entities AS e ON d.master_id = e.id


