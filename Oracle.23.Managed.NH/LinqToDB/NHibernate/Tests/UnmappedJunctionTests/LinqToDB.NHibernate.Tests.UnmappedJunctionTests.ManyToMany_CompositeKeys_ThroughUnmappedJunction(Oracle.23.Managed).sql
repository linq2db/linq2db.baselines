select zone0_.zoneid as zoneid1_35_, zone0_.zoneno as zoneno2_35_, zone0_.name as name3_35_ from l2dbnh_zone zone0_

select facility0_.siteid as siteid1_33_, facility0_.facilityno as facilityno2_33_, facility0_.label as label3_33_ from l2dbnh_facility facility0_

INSERT INTO l2dbnh_facility (label, siteid, facilityno) VALUES (:p0, :p1, :p2);:p0 = 'F1' [Type: String (0:0:0)], :p1 = 10 [Type: Int32 (0:0:0)], :p2 = 20 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_facility (label, siteid, facilityno) VALUES (:p0, :p1, :p2);:p0 = 'F2' [Type: String (0:0:0)], :p1 = 11 [Type: Int32 (0:0:0)], :p2 = 21 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_facility (label, siteid, facilityno) VALUES (:p0, :p1, :p2);:p0 = 'F3' [Type: String (0:0:0)], :p1 = 20 [Type: Int32 (0:0:0)], :p2 = 10 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_zone (name, zoneid, zoneno) VALUES (:p0, :p1, :p2);:p0 = 'Alpha' [Type: String (0:0:0)], :p1 = 1 [Type: Int32 (0:0:0)], :p2 = 7 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_zone (name, zoneid, zoneno) VALUES (:p0, :p1, :p2);:p0 = 'Beta' [Type: String (0:0:0)], :p1 = 7 [Type: Int32 (0:0:0)], :p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_zonefacility (zoneid, zoneno, siteid, facilityno) VALUES (:p0, :p1, :p2, :p3);:p0 = 1 [Type: Int32 (0:0:0)], :p1 = 7 [Type: Int32 (0:0:0)], :p2 = 10 [Type: Int32 (0:0:0)], :p3 = 20 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_zonefacility (zoneid, zoneno, siteid, facilityno) VALUES (:p0, :p1, :p2, :p3);:p0 = 1 [Type: Int32 (0:0:0)], :p1 = 7 [Type: Int32 (0:0:0)], :p2 = 11 [Type: Int32 (0:0:0)], :p3 = 21 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_zonefacility (zoneid, zoneno, siteid, facilityno) VALUES (:p0, :p1, :p2, :p3);:p0 = 7 [Type: Int32 (0:0:0)], :p1 = 1 [Type: Int32 (0:0:0)], :p2 = 20 [Type: Int32 (0:0:0)], :p3 = 10 [Type: Int32 (0:0:0)]

-- Oracle.Managed Oracle12
SELECT
	o.label
FROM
	l2dbnh_zone z
		INNER JOIN l2dbnh_zonefacility j ON j.zoneid = z.zoneid AND j.zoneno = z.zoneno
		INNER JOIN l2dbnh_facility o ON o.siteid = j.siteid AND o.facilityno = j.facilityno
WHERE
	z.zoneid = 1 AND z.zoneno = 7
ORDER BY
	o.label


select facility2_.label as col_0_0_ from l2dbnh_zone zone0_ inner join l2dbnh_zonefacility facilities1_ on zone0_.zoneid=facilities1_.zoneid and zone0_.zoneno=facilities1_.zoneno inner join l2dbnh_facility facility2_ on facilities1_.siteid=facility2_.siteid and facilities1_.facilityno=facility2_.facilityno where zone0_.zoneid=:p0 and zone0_.zoneno=:p1 order by facility2_.label asc;:p0 = 1 [Type: Int32 (0:0:0)], :p1 = 7 [Type: Int32 (0:0:0)]

-- Oracle.Managed Oracle12
SELECT
	o.label
FROM
	l2dbnh_zone f
		INNER JOIN l2dbnh_zonefacility j ON j.zoneid = f.zoneid AND j.zoneno = f.zoneno
		INNER JOIN l2dbnh_facility o ON o.siteid = j.siteid AND o.facilityno = j.facilityno
WHERE
	f.zoneid = 7 AND f.zoneno = 1


