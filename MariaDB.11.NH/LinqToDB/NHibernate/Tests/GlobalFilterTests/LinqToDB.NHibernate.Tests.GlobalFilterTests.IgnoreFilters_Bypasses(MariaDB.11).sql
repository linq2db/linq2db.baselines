-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_documents`


INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (?p0, ?p1, ?p2);SELECT LAST_INSERT_ID();?p0 = 'A' [Type: String (1:0:0)], ?p1 = 0 [Type: Int32 (0:0:0)], ?p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (?p0, ?p1, ?p2);SELECT LAST_INSERT_ID();?p0 = 'B' [Type: String (1:0:0)], ?p1 = 1 [Type: Int32 (0:0:0)], ?p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (?p0, ?p1, ?p2);SELECT LAST_INSERT_ID();?p0 = 'C' [Type: String (1:0:0)], ?p1 = 0 [Type: Int32 (0:0:0)], ?p2 = 2 [Type: Int32 (0:0:0)]

-- MariaDB.10.MySql.Data MariaDB
SELECT
	`d`.`title`
FROM
	`l2dbnh_documents` `d`
ORDER BY
	`d`.`title`


