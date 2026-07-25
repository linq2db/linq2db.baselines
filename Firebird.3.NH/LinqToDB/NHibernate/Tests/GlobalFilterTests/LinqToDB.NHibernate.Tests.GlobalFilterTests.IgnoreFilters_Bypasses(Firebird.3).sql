-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_documents t1


select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (@p0, @p1, @p2, @p3);@p0 = 'A' [Type: String (1:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)], @p3 = 11 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (@p0, @p1, @p2, @p3);@p0 = 'B' [Type: String (1:0:0)], @p1 = 1 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)], @p3 = 12 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (@p0, @p1, @p2, @p3);@p0 = 'C' [Type: String (1:0:0)], @p1 = 0 [Type: Int32 (0:0:0)], @p2 = 2 [Type: Int32 (0:0:0)], @p3 = 13 [Type: Int32 (0:0:0)]

-- Firebird.3 Firebird3
SELECT
	d.title
FROM
	l2dbnh_documents d
ORDER BY
	d.title


