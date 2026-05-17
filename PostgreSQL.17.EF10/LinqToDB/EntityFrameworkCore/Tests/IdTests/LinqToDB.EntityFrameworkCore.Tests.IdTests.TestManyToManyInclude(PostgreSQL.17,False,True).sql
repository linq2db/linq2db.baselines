SELECT e.id, e.name, s.entity_id, s.item_id, s.id, s.name
FROM entities AS e
LEFT JOIN (
    SELECT e0.entity_id, e0.item_id, i.id, i.name
    FROM entity2_item AS e0
    INNER JOIN items AS i ON e0.item_id = i.id
) AS s ON e.id = s.entity_id
ORDER BY e.id, s.entity_id, s.item_id


