-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.master_id,
	t1.name,
	"a_Master".id,
	"a_Master".name
FROM
	details t1
		INNER JOIN entities "a_Master" ON t1.master_id = "a_Master".id



