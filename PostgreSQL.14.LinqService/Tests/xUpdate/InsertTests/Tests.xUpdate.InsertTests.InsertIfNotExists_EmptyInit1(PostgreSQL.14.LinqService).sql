﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

INSERT INTO test_insert_or_replace AS t1
(
	id,
	name
)
VALUES
(
	1,
	'test'
)
ON CONFLICT (id) DO NOTHING

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

INSERT INTO test_insert_or_replace AS t1
(
	id,
	name
)
VALUES
(
	1,
	'test'
)
ON CONFLICT (id) DO NOTHING

