select club0_.clubid as clubid1_31_, club0_.name as name2_31_ from l2dbnh_club club0_

select member0_.memberid as memberid1_34_, member0_.name as name2_34_ from l2dbnh_member member0_

INSERT INTO l2dbnh_member (name, memberid) VALUES (:p0, :p1);:p0 = 'Ada' [Type: String (0:0:0)], :p1 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_member (name, memberid) VALUES (:p0, :p1);:p0 = 'Bob' [Type: String (0:0:0)], :p1 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_member (name, memberid) VALUES (:p0, :p1);:p0 = 'Cid' [Type: String (0:0:0)], :p1 = 3 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_club (name, clubid) VALUES (:p0, :p1);:p0 = 'Chess' [Type: String (0:0:0)], :p1 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_club (name, clubid) VALUES (:p0, :p1);:p0 = 'Choir' [Type: String (0:0:0)], :p1 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_clubmember (clubid, memberid) VALUES (:p0, :p1);:p0 = 1 [Type: Int32 (0:0:0)], :p1 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_clubmember (clubid, memberid) VALUES (:p0, :p1);:p0 = 1 [Type: Int32 (0:0:0)], :p1 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_clubmember (clubid, memberid) VALUES (:p0, :p1);:p0 = 2 [Type: Int32 (0:0:0)], :p1 = 3 [Type: Int32 (0:0:0)]

-- PostgreSQL.9.3 PostgreSQL
SELECT
	o.name
FROM
	l2dbnh_club c_1
		INNER JOIN l2dbnh_clubmember j ON j.clubid = c_1.clubid
		INNER JOIN l2dbnh_member o ON o.memberid = j.memberid
WHERE
	c_1.clubid = 1
ORDER BY
	o.name


select member2_.name as col_0_0_ from l2dbnh_club club0_ inner join l2dbnh_clubmember members1_ on club0_.clubid=members1_.clubid inner join l2dbnh_member member2_ on members1_.memberid=member2_.memberid where club0_.clubid=:p0 order by member2_.name asc;:p0 = 1 [Type: Int32 (0:0:0)]

