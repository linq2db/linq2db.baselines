-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_documents t1


select hibernate_sequence.nextval from dual

select hibernate_sequence.nextval from dual

select hibernate_sequence.nextval from dual

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (:p0, :p1, :p2, :p3);:p0 = 'A' [Type: String (0:0:0)], :p1 = 0 [Type: Int32 (0:0:0)], :p2 = 1 [Type: Int32 (0:0:0)], :p3 = 7 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (:p0, :p1, :p2, :p3);:p0 = 'B' [Type: String (0:0:0)], :p1 = 1 [Type: Int32 (0:0:0)], :p2 = 1 [Type: Int32 (0:0:0)], :p3 = 8 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (:p0, :p1, :p2, :p3);:p0 = 'C' [Type: String (0:0:0)], :p1 = 0 [Type: Int32 (0:0:0)], :p2 = 2 [Type: Int32 (0:0:0)], :p3 = 9 [Type: Int32 (0:0:0)]

select hibernate_sequence.nextval from dual

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id, id) VALUES (:p0, :p1, :p2, :p3);:p0 = 'x{y}z' [Type: String (0:0:0)], :p1 = 0 [Type: Int32 (0:0:0)], :p2 = 1 [Type: Int32 (0:0:0)], :p3 = 10 [Type: Int32 (0:0:0)]

-- Oracle.Managed Oracle12
SELECT
	e.title
FROM
	l2dbnh_documents e
WHERE
	e.title <> 'x{y}z'
ORDER BY
	e.title


select document0_.title as col_0_0_ from l2dbnh_documents document0_ where document0_.Title <> 'x{y}z' order by document0_.title asc

