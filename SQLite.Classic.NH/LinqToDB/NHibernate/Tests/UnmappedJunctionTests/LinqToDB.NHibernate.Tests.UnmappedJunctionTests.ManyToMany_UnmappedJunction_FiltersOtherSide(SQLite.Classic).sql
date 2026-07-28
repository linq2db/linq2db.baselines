select club0_.clubid as clubid1_31_, club0_.name as name2_31_ from l2dbnh_club club0_

DELETE FROM l2dbnh_clubmember WHERE clubid = @p0;@p0 = 1 [Type: Int32 (0:0:0)]

DELETE FROM l2dbnh_clubmember WHERE clubid = @p0;@p0 = 2 [Type: Int32 (0:0:0)]

DELETE FROM l2dbnh_club WHERE clubid = @p0;@p0 = 1 [Type: Int32 (0:0:0)]

DELETE FROM l2dbnh_club WHERE clubid = @p0;@p0 = 2 [Type: Int32 (0:0:0)]

select member0_.memberid as memberid1_34_, member0_.name as name2_34_ from l2dbnh_member member0_

DELETE FROM l2dbnh_member WHERE memberid = @p0;@p0 = 1 [Type: Int32 (0:0:0)]

DELETE FROM l2dbnh_member WHERE memberid = @p0;@p0 = 2 [Type: Int32 (0:0:0)]

DELETE FROM l2dbnh_member WHERE memberid = @p0;@p0 = 3 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_member (name, memberid) VALUES (@p0, @p1);@p0 = 'Ada' [Type: String (0:0:0)], @p1 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_member (name, memberid) VALUES (@p0, @p1);@p0 = 'Bob' [Type: String (0:0:0)], @p1 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_member (name, memberid) VALUES (@p0, @p1);@p0 = 'Cid' [Type: String (0:0:0)], @p1 = 3 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_club (name, clubid) VALUES (@p0, @p1);@p0 = 'Chess' [Type: String (0:0:0)], @p1 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_club (name, clubid) VALUES (@p0, @p1);@p0 = 'Choir' [Type: String (0:0:0)], @p1 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_clubmember (clubid, memberid) VALUES (@p0, @p1);@p0 = 1 [Type: Int32 (0:0:0)], @p1 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_clubmember (clubid, memberid) VALUES (@p0, @p1);@p0 = 1 [Type: Int32 (0:0:0)], @p1 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_clubmember (clubid, memberid) VALUES (@p0, @p1);@p0 = 2 [Type: Int32 (0:0:0)], @p1 = 3 [Type: Int32 (0:0:0)]

-- SQLite.Classic SQLite
SELECT
	[c_1].[name]
FROM
	[l2dbnh_club] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[l2dbnh_clubmember] [m_1]
				INNER JOIN [l2dbnh_member] [o] ON [o].[memberid] = [m_1].[memberid]
		WHERE
			[m_1].[clubid] = [c_1].[clubid] AND [o].[name] = 'Cid'
	)


