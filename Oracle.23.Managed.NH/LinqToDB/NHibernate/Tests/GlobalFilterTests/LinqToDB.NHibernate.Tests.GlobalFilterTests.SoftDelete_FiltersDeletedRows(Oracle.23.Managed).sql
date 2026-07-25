-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_documents t1


select hibernate_sequence.nextval from dual

select hibernate_sequence.nextval from dual

select hibernate_sequence.nextval from dual

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (:p0, :p1, :p2, :p3);:p0 = 'A' [Type: String (0:0:0)], :p1 = 0 [Type: Int32 (0:0:0)], :p2 = 1 [Type: Int32 (0:0:0)], :p3 = 20 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (:p0, :p1, :p2, :p3);:p0 = 'B' [Type: String (0:0:0)], :p1 = 1 [Type: Int32 (0:0:0)], :p2 = 1 [Type: Int32 (0:0:0)], :p3 = 21 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (:p0, :p1, :p2, :p3);:p0 = 'C' [Type: String (0:0:0)], :p1 = 0 [Type: Int32 (0:0:0)], :p2 = 2 [Type: Int32 (0:0:0)], :p3 = 22 [Type: Int32 (0:0:0)]

-- Oracle.Managed Oracle12
SELECT
	e.title
FROM
	l2dbnh_documents e
WHERE
	e.is_deleted = 0
ORDER BY
	e.title


select document0_.title as col_0_0_ from l2dbnh_documents document0_ where document0_.is_deleted = 0 order by document0_.title asc

