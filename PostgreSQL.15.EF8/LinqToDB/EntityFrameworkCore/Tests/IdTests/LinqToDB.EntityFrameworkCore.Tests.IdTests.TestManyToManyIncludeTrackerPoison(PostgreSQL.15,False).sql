SELECT e.id, e.name, t.entity_id, t.item_id, t.id, t.name
FROM entities AS e
LEFT JOIN (
    SELECT e0.entity_id, e0.item_id, i.id, i.name
    FROM entity2_item AS e0
    INNER JOIN items AS i ON e0.item_id = i.id
) AS t ON e.id = t.entity_id
ORDER BY e.id, t.entity_id, t.item_id


BeginTransaction(RepeatableRead)


-- PostgreSQL.15 PostgreSQL

SELECT
	m_1.id,
	d.entity_id,
	d.item_id,
	"a_Item".id,
	"a_Item".name
FROM
	entities m_1
		INNER JOIN entity2_item d ON m_1.id = d.entity_id
		INNER JOIN items "a_Item" ON d.item_id = "a_Item".id



DisposeTransaction


-- PostgreSQL.15 PostgreSQL

SELECT
	t1.id,
	t1.name
FROM
	entities t1



