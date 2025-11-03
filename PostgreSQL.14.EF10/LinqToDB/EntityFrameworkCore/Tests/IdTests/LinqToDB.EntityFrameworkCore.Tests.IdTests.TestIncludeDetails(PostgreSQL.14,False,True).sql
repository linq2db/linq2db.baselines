SELECT e.id, e.name, s0.id, s0.master_id, s0.name, s0.id0, s0.master_id0, s0.name0, c.id, c.name, c.parent_id
FROM entities AS e
LEFT JOIN (
    SELECT d.id, d.master_id, d.name, s.id AS id0, s.master_id AS master_id0, s.name AS name0
    FROM details AS d
    LEFT JOIN sub_details AS s ON d.id = s.master_id
) AS s0 ON e.id = s0.master_id
LEFT JOIN children AS c ON e.id = c.parent_id
WHERE e.name = 'Alpha'
ORDER BY e.id, s0.id, s0.id0


