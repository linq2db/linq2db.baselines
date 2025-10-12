BeginTransaction(RepeatableRead)


-- PostgreSQL.9.5 PostgreSQL

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


-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.name
FROM
	entities t1



