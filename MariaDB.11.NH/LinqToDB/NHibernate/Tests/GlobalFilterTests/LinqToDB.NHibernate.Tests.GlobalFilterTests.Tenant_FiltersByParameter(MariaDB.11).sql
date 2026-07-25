-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_documents`


INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (?p0, ?p1, ?p2);SELECT LAST_INSERT_ID();?p0 = 'A' [Type: String (1:0:0)], ?p1 = 0 [Type: Int32 (0:0:0)], ?p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (?p0, ?p1, ?p2);SELECT LAST_INSERT_ID();?p0 = 'B' [Type: String (1:0:0)], ?p1 = 1 [Type: Int32 (0:0:0)], ?p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_documents (title, is_deleted, tenant_id) VALUES (?p0, ?p1, ?p2);SELECT LAST_INSERT_ID();?p0 = 'C' [Type: String (1:0:0)], ?p1 = 0 [Type: Int32 (0:0:0)], ?p2 = 2 [Type: Int32 (0:0:0)]

-- MariaDB.10.MySql.Data MariaDB
DECLARE @p Int32
SET     @p = 1

SELECT
	`e`.`title`
FROM
	`l2dbnh_documents` `e`
WHERE
	`e`.`tenant_id` = @p
ORDER BY
	`e`.`title`


select document0_.title as col_0_0_ from l2dbnh_documents document0_ where document0_.tenant_id = ?p0 order by document0_.title asc;?p0 = 1 [Type: Int32 (0:0:0)]

