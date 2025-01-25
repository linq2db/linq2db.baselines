﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Dto"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Dto"
(
	id         Int  NOT NULL,
	name       text     NULL,
	parent_id  Int      NULL,
	"FullName" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

WITH RECURSIVE d
(
	"FullName",
	id,
	parent_id,
	name
)
AS
(
	SELECT
		a.name,
		a.id,
		a.parent_id,
		a.name
	FROM
		"Dto" a
	WHERE
		a.parent_id IS NULL
	UNION ALL
	SELECT
		recur."FullName" || ' > ' || t1.name,
		t1.id,
		t1.parent_id,
		t1.name
	FROM
		"Dto" t1
			INNER JOIN d recur ON recur.id = t1.parent_id
)
SELECT
	t2.id,
	t2.parent_id,
	t2.name,
	t2."FullName"
FROM
	d t2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Dto"

