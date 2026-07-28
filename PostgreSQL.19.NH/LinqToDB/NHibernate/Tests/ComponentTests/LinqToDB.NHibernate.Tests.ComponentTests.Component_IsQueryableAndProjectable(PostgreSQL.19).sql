-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	l2dbnh_contact t1


INSERT INTO l2dbnh_contact (name, street, city, contactid) VALUES (:p0, :p1, :p2, :p3);:p0 = 'Ada' [Type: String (0:0:0)], :p1 = '1 Main St' [Type: String (0:0:0)], :p2 = 'London' [Type: String (0:0:0)], :p3 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_contact (name, street, city, contactid) VALUES (:p0, :p1, :p2, :p3);:p0 = 'Bob' [Type: String (0:0:0)], :p1 = '2 Side Rd' [Type: String (0:0:0)], :p2 = 'Paris' [Type: String (0:0:0)], :p3 = 2 [Type: Int32 (0:0:0)]

-- PostgreSQL.9.3 PostgreSQL
SELECT
	c_1.name
FROM
	l2dbnh_contact c_1
WHERE
	c_1.city = 'Paris'


-- PostgreSQL.9.3 PostgreSQL
SELECT
	c_1.city
FROM
	l2dbnh_contact c_1
ORDER BY
	c_1.contactid


