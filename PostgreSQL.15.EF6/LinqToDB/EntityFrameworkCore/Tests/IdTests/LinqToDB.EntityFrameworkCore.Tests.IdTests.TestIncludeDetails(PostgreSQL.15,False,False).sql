SELECT e.id, e.name, t.id, t.master_id, t.name, t.id0, t.master_id0, t.name0, c.id, c.name, c.parent_id
FROM entities AS e
LEFT JOIN (
    SELECT d.id, d.master_id, d.name, s.id AS id0, s.master_id AS master_id0, s.name AS name0
    FROM details AS d
    LEFT JOIN sub_details AS s ON d.id = s.master_id
) AS t ON e.id = t.master_id
LEFT JOIN children AS c ON e.id = c.parent_id
WHERE e.name = 'Alpha'
ORDER BY e.id, t.id, t.id0


