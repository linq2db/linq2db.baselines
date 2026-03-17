SELECT e.id, e.name, t.entity_id, t.item_id, t.id, t.name
FROM entities AS e
LEFT JOIN (
    SELECT e0.entity_id, e0.item_id, i.id, i.name
    FROM entity2_item AS e0
    INNER JOIN items AS i ON e0.item_id = i.id
) AS t ON e.id = t.entity_id
ORDER BY e.id, t.entity_id, t.item_id


