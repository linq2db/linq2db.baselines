-- Firebird.5 Firebird4
DELETE FROM
	l2dbnh_contact t1


INSERT INTO l2dbnh_contact (name, street, city, contactid) VALUES (@p0, @p1, @p2, @p3);@p0 = 'Ada' [Type: String (3:0:0)], @p1 = '1 Main St' [Type: String (9:0:0)], @p2 = 'London' [Type: String (6:0:0)], @p3 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_contact (name, street, city, contactid) VALUES (@p0, @p1, @p2, @p3);@p0 = 'Bob' [Type: String (3:0:0)], @p1 = '2 Side Rd' [Type: String (9:0:0)], @p2 = 'Paris' [Type: String (5:0:0)], @p3 = 2 [Type: Int32 (0:0:0)]

-- Firebird.5 Firebird4
SELECT
	c_1.contactid,
	c_1.name,
	c_1.street,
	c_1.city
FROM
	l2dbnh_contact c_1
WHERE
	c_1.contactid = 1
FETCH NEXT 2 ROWS ONLY


select contact0_.contactid as contactid1_17_, contact0_.name as name2_17_, contact0_.street as street3_17_, contact0_.city as city4_17_ from l2dbnh_contact contact0_ where contact0_.contactid=@p0;@p0 = 1 [Type: Int32 (0:0:0)]

