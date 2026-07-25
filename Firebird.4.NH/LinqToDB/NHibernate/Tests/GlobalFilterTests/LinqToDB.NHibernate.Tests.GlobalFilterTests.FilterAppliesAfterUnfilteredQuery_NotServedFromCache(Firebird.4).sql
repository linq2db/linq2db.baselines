-- Firebird.4 Firebird4
DELETE FROM
	l2dbnh_documents t1


select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (@p0, @p1, @p2, @p3);@p0 = 'A' [Type: String (1:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)], @p3 = 4 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (@p0, @p1, @p2, @p3);@p0 = 'B' [Type: String (1:0:0)], @p1 = 1 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)], @p3 = 5 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (@p0, @p1, @p2, @p3);@p0 = 'C' [Type: String (1:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 2 [Type: Int32 (0:0:0)], @p3 = 6 [Type: Int32 (0:0:0)]

-- Firebird.4 Firebird4
SELECT
	d.title
FROM
	l2dbnh_documents d
ORDER BY
	d.title


select document0_.title as col_0_0_ from l2dbnh_documents document0_ order by document0_.title asc

-- Firebird.4 Firebird4
SELECT
	e.title
FROM
	l2dbnh_documents e
WHERE
	e.is_deleted = 0
ORDER BY
	e.title


select document0_.title as col_0_0_ from l2dbnh_documents document0_ where document0_.is_deleted = 0 order by document0_.title asc

