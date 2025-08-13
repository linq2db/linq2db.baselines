BeginTransaction(RepeatableRead)


-- PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1.id,
	d_1.master_id,
	d_1.name
FROM
	(
		SELECT DISTINCT
			d.id as "Id",
			t1."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					e.id as "Id"
				FROM
					entities e
				WHERE
					e.name = 'Alpha'
			) t1
				INNER JOIN details d ON t1."Id" = d.master_id
	) m_1
		INNER JOIN sub_details d_1 ON m_1."Id" = d_1.master_id



-- PostgreSQL.9.5 PostgreSQL

SELECT
	m_1.id,
	d.id,
	d.master_id,
	d.name
FROM
	entities m_1
		INNER JOIN details d ON m_1.id = d.master_id
WHERE
	m_1.name = 'Alpha'



-- PostgreSQL.9.5 PostgreSQL

SELECT
	m_1.id,
	d.id,
	d.parent_id,
	d.name
FROM
	entities m_1
		INNER JOIN children d ON m_1.id = d.parent_id
WHERE
	m_1.name = 'Alpha'



DisposeTransaction


-- PostgreSQL.9.5 PostgreSQL

SELECT
	e.id,
	e.name
FROM
	entities e
WHERE
	e.name = 'Alpha'



